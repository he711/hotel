package com.hotels.service.impl;

import java.util.List;

import com.hotels.mapper.RoomSetMapper;
import com.hotels.page.Page;
import com.hotels.pojo.RoomSetPo;
import com.hotels.service.RoomSetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;



@Transactional
@Service(value="roomSetService")
public class RoomSetServiceImpl implements RoomSetService {

	@Autowired
	private RoomSetMapper roomSetMapper;
	
	/*@Override
	public List<RoomSetPo> selectAll() {
		return roomSetDao.selectAll();
	}
*/

	public int deleteById(Integer id) {
		return roomSetMapper.deleteById(id);
	}


	public int insertAll(RoomSetPo roomSetPo) {
		return roomSetMapper.insertAll(roomSetPo);
	}


	public RoomSetPo selectById(Integer id) {
		return roomSetMapper.selectById(id);
	}


	public int updateById(RoomSetPo roomSetPo) {
		return roomSetMapper.updateById(roomSetPo);
	}



   

	//分页的模糊查询
	public Page<RoomSetPo> pageFuzzyselect(String roomNumber, Page<RoomSetPo> vo) {
		int start=0;
		if (vo.getCurrentPage()>1) {
			start=(vo.getCurrentPage()-1)*vo.getPageSize();
		}
		List<RoomSetPo> list=this.roomSetMapper.pageFuzzyselect(roomNumber, start, vo.getPageSize());
		vo.setResult(list);
		
		int count=this.roomSetMapper.countFuzzyselect(roomNumber);
		vo.setTotal(count);
		return vo;
	}

	public List<RoomSetPo> selectAll() {
		return roomSetMapper.selectAll();
	}

	public List<RoomSetPo> selectByLeveId(Integer id) {
		return roomSetMapper.selectByLeveId(id);
	}


	public int updateByIdToRoomState(RoomSetPo roomSetPo) {
		return roomSetMapper.updateByIdToRoomState(roomSetPo);
	}


	public List<RoomSetPo> selectInformation(String roomNumber) {
		return roomSetMapper.selectInformation(roomNumber);
	}


	public List<RoomSetPo> levelSelectInformation(Integer guestRoomLevelID) {
		return this.roomSetMapper.levelSelectInformation(guestRoomLevelID);
	}


	public int selectYZ(String roomNumber) {
		return this.roomSetMapper.selectYZ(roomNumber);
	}


	public int selectLevelById(Integer id) {
		return roomSetMapper.selectLevelById(id);
	}

	public int countRoomByLevel(Integer guestRoomLevelID) {
		return roomSetMapper.countRoomByLevel(guestRoomLevelID);
	}


}
