package com.tis.persistence;
// ���Ӽ� ���� => @Resposiotory

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository("sampleDaoMyBatis")
public class SampleDaoMyBatis implements SampleDao {
	
	private final String NS="common.base.SampleMapper";
	
	@Resource(name="sqlSessionTemplate")
	private SqlSessionTemplate session; 

	@Override
	public int getTotalCount() {
		int cnt = session.selectOne(NS+".tableCount");
		return cnt;
	}

}
