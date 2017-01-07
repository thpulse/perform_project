package kitri.performinfo.boxweekly;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import kitri.performinfo.boxweekly.dto.BoxWeeklyDTO;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

@Controller
public class ParsingTest {
	@RequestMapping("/index2.do")
	public ModelAndView test(){
		List<BoxWeeklyDTO> prflist = new ArrayList<BoxWeeklyDTO>();
		try {
			URL url = new URL("http://www.kopis.or.kr/openApi/restful/boxWeekMonthly?service=8a86476387964df68be9acc29724006f&ststype=week&catecode=YK");
			XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
			XmlPullParser parser = factory.newPullParser();
			BufferedInputStream bis = new BufferedInputStream(url.openStream());
			parser.setInput(bis,"utf-8");
			int eventType = parser.getEventType();
			String tag = "";
			String area = "";
			String prfcount = "";
			String nmrs = "";
			String prfperiod = "";
			String genre = "";
			String prfplcnm = "";
			String prfnm = "";
			String rank = "";
			String seatcnt = "";
			String poster = "";
			String prfid = "";
			while(eventType!=XmlPullParser.END_DOCUMENT){
				if (eventType==XmlPullParser.START_TAG) {
					tag = parser.getName();
				}else if(eventType==XmlPullParser.TEXT){
					if (tag.equals("area") & !parser.getText().contains("\n")) {
						area = parser.getText();
					}else if (tag.equals("prfdtcnt") & !parser.getText().contains("\n")) {
						prfcount = parser.getText();
					}else if (tag.equals("nmrs") & !parser.getText().contains("\n")) {
						nmrs = parser.getText();
					}else if (tag.equals("prfpd") & !parser.getText().contains("\n")) {
						prfperiod = parser.getText();
					}else if (tag.equals("cate") & !parser.getText().contains("\n")) {
						genre = parser.getText();
					}else if (tag.equals("prfplcnm") & !parser.getText().contains("\n")) {
						prfplcnm = parser.getText();
					}else if (tag.equals("prfnm") & !parser.getText().contains("\n")) {
						prfnm = parser.getText();
					}else if (tag.equals("rnum") & !parser.getText().contains("\n")) {
						rank = parser.getText();
					}else if (tag.equals("seatcnt") & !parser.getText().contains("\n")) {
						seatcnt = parser.getText();
					}else if (tag.equals("poster") & !parser.getText().contains("\n")) {
						poster = parser.getText();
					}else if (tag.equals("prfid") & !parser.getText().contains("\n")) {
						prfid = parser.getText();
					}
				}else if(eventType==XmlPullParser.END_TAG){
					tag = parser.getName();
					if (tag.equals("boxof")) {
						BoxWeeklyDTO box = new BoxWeeklyDTO(area, prfcount, nmrs, prfperiod, genre, prfplcnm, prfnm, rank, seatcnt, poster, prfid);
						prflist.add(box);	
					}					
				}				
				//다음이벤트로 넘기기
				eventType = parser.next();
			}
		} catch (XmlPullParserException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return new ModelAndView("performinfo/content2","prflist",prflist);
	}
}
