package com.hotels.service.impl;

import java.util.List;

import com.hotels.mapper.PassengerMapper;
import com.hotels.page.Page;
import com.hotels.pojo.PassengerPo;
import com.hotels.service.PassengerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;



@Transactional
@Service(value="passengerService")
public class PassengerServiceImpl implements PassengerService {

	@Autowired
	private PassengerMapper passengerMapper;
	

	public int deleteById(Integer id) {
		return passengerMapper.deleteById(id);
	}


	public int insertAll(PassengerPo passengerPo) {
		return passengerMapper.insertAll(passengerPo);
	}


	public PassengerPo selectById(Integer id) {
		return passengerMapper.selectById(id);
	}


	public int updateById(PassengerPo passengerPo) {
		return passengerMapper.updateById(passengerPo);
	}


	public Page<PassengerPo> pageFuzzyselect(String name, Page<PassengerPo> vo) {
		int start=0;
		if (vo.getCurrentPage()>1) {
			start=(vo.getCurrentPage()-1)*vo.getPageSize();
		}
		List<PassengerPo> list= passengerMapper.pageFuzzyselect(name, start, vo.getPageSize());
		vo.setResult(list);
		int count= passengerMapper.countFuzzyselect(name);
		vo.setTotal(count);
		return vo;
	}


	public List<PassengerPo> selectAll() {
		return passengerMapper.selectAll();
	}


	public List<PassengerPo> selectAjaxList(String name) {
		return passengerMapper.selectAjaxList(name);
	}


	public int selectYZ(String papersNumber) {
		return this.passengerMapper.selectYZ(papersNumber);
	}

}
