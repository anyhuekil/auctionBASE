package com.cto.auction.repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.cto.auction.vo.TestVO;

@Repository
public interface TestRep {
	public ArrayList<TestVO> testSrvcMethod(TestVO sch);

}
