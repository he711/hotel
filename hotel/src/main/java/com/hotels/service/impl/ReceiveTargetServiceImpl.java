package com.hotels.service.impl;

import java.util.List;

import com.hotels.mapper.ReceiveTargetMapper;
import com.hotels.page.Page;
import com.hotels.pojo.ReceiveTargetPo;
import com.hotels.service.ReceiveTargetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;



@Transactional
@Service(value="receiveTargetService")
public class ReceiveTargetServiceImpl implements ReceiveTargetService {

	@Autowired
	private ReceiveTargetMapper receiveTargetMapper;
	

	public int deleteById(Integer id) {
		return receiveTargetMapper.deleteById(id);
	}


	public int insertAll(ReceiveTargetPo receiveTargetPo) {
		return receiveTargetMapper.insertAll(receiveTargetPo);
	}


	public ReceiveTargetPo selectById(Integer id) {
		return receiveTargetMapper.selectById(id);
	}


	public int updateById(ReceiveTargetPo receiveTargetPo) {
		return receiveTargetMapper.updateById(receiveTargetPo);
	}


	public Page<ReceiveTargetPo> pageFuzzyselect(String teamName, Page<ReceiveTargetPo> vo) {
		int start=0;
		if (vo.getCurrentPage()>1) {
			start=(vo.getCurrentPage()-1)*vo.getPageSize();
		}
		List<ReceiveTargetPo> list= receiveTargetMapper.pageFuzzyselect(teamName, start, vo.getPageSize());
		vo.setResult(list);
		int count= receiveTargetMapper.countFuzzyselect(teamName);
		vo.setTotal(count);
		return vo;
	}

	public List<ReceiveTargetPo> ajaxSelect(String teamName) {
		return receiveTargetMapper.ajaxSelect(teamName);
	}


	public int selectYZ(String teamCode) {
		return this.receiveTargetMapper.selectYZ(teamCode);
	}

}
