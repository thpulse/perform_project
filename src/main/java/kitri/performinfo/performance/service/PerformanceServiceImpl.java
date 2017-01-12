package kitri.performinfo.performance.service;

import kitri.performinfo.performance.dao.PerformanceDAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("prfservice")
public class PerformanceServiceImpl implements PerformanceService {
	@Autowired
	PerformanceDAO dao;
	
	@Override
	public void Add_Performance() {
		dao.Add_Performance();
	}

}
