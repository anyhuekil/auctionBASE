package com.cto.auction.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cto.auction.repository.TestRep;
import com.cto.auction.vo.TestVO;


@Service
public class TestService {
	@Autowired(required = false)
	private TestRep dao;

	public ArrayList<TestVO> testSrvcMethod(TestVO sch) {
		return dao.testSrvcMethod(sch);
	}
}
