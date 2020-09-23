package com.tis.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.tis.persistence.SampleDao;

@Service("sampleServiceImpl")
public class SampleServiceImpl implements SampleService {

	@Inject
	private SampleDao sDao;
	
	@Override
	public int getTableCount() {
		return sDao.getTotalCount();
	}
	 
}
