package com.hotels.service.impl;

import java.sql.Timestamp;
import java.util.List;

import com.hotels.mapper.StayRegisterMapper;
import com.hotels.page.Page;
import com.hotels.pojo.StayRegisterPo;
import com.hotels.service.StayRegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Transactional
@Service(value="stayRegisterService")
public class StayRegisterServiceImpl implements StayRegisterService {

	@Autowired
	private StayRegisterMapper stayRegisterMapper;
	

	public int insertAll(StayRegisterPo stayRegisterPo) {
		return stayRegisterMapper.insertAll(stayRegisterPo);
	}


	public List<Integer> selectAllRoomNum(Timestamp payTime) {
		return stayRegisterMapper.selectAllRoomNum(payTime);
	}


	public Page<StayRegisterPo> pageFuzzyselectOne(int receiveTargeTypeID,
												   int isBillID, String roomNumber, Page<StayRegisterPo> vo) {
		int start=0;
		if (vo.getCurrentPage()>1) {
			start=(vo.getCurrentPage()-1)*vo.getPageSize();
		}
		List<StayRegisterPo> list= stayRegisterMapper.pageFuzzyselectOne(receiveTargeTypeID, isBillID, roomNumber,start, vo.getPageSize());
		vo.setResult(list);
		int count= stayRegisterMapper.countFuzzyselectOne(receiveTargeTypeID, isBillID,roomNumber);
		vo.setTotal(count);
		return vo;
	}


	public StayRegisterPo selectById(Integer id) {
		return this.stayRegisterMapper.selectById(id);
	}


	public int insertStayregisterdetails(int stayRegisterID, int passengerID) {
		return stayRegisterMapper.insertStayregisterdetails(stayRegisterID, passengerID);
	}


	public int insertDeposit(StayRegisterPo stayRegisterPo) {
		return stayRegisterMapper.insertDeposit(stayRegisterPo);
	}


	public List<StayRegisterPo> selectDepositById(int id) {
		return stayRegisterMapper.selectDepositById(id);
	}


	public int insertConsumptiondetails(StayRegisterPo stayRegisterPo) {
		return stayRegisterMapper.insertConsumptiondetails(stayRegisterPo);
	}


	public Page<StayRegisterPo> pageConsumption(int consumptionStayRegisterID,Page<StayRegisterPo> vo) {
		int start=0;
		if (vo.getCurrentPage()>1) {
			start=(vo.getCurrentPage()-1)*vo.getPageSize();
		}
		List<StayRegisterPo> list= stayRegisterMapper.pageConsumption(consumptionStayRegisterID, start, vo.getPageSize());
		vo.setResult(list);
		int count= stayRegisterMapper.countConsumption(consumptionStayRegisterID);
		vo.setTotal(count);
		return vo;
	}


	public int deleteConsumption(Integer id) {
		return stayRegisterMapper.deleteConsumption(id);
	}


	public int updateSumConst(int id, Double sumConst) {
		return stayRegisterMapper.updateSumConst(id, sumConst);
	}


	public List<StayRegisterPo> selectMoney(int id) {
		return stayRegisterMapper.selectMoney(id);
	}

	public List<StayRegisterPo> selectChangRoom(int id) {
		return stayRegisterMapper.selectChangRoom(id);
	}

	public List<StayRegisterPo> selectAll() {
		return stayRegisterMapper.selectAll();
	}

	public int updateRemind(int id, int remind) {
		return stayRegisterMapper.updateRemind(id, remind);
	}


	public int updateChangRoom(StayRegisterPo stayRegisterPo) {
		return stayRegisterMapper.updateChangRoom(stayRegisterPo);
	}

	public int pay(int id, String remarks, Timestamp payTime, int payWay) {
		return stayRegisterMapper.pay(id, remarks, payTime, payWay);
	}

	public Page<StayRegisterPo> pageFuzzyselectTwo(int receiveTargetID,
			int isBillID, String roomNumber, Page<StayRegisterPo> vo) {
		int start=0;
		if (vo.getCurrentPage()>1) {
			start=(vo.getCurrentPage()-1)*vo.getPageSize();
		}
		List<StayRegisterPo> list= stayRegisterMapper.pageFuzzyselectTwo(receiveTargetID, isBillID, roomNumber,start, vo.getPageSize());
		vo.setResult(list);
		int count= stayRegisterMapper.countFuzzyselectTwo(receiveTargetID, isBillID, roomNumber);
		vo.setTotal(count);
		return vo;
	}

	public List<StayRegisterPo> selectFormTeamId(int receiveTargetID,
			int isBillID) {
		return this.stayRegisterMapper.selectFormTeamId(receiveTargetID, isBillID);
	}


	public List<StayRegisterPo> selectTeamDeposit(int receiveTargetID) {
		return this.stayRegisterMapper.selectTeamDeposit(receiveTargetID);
	}


	public List<StayRegisterPo> selectTeamConsumption(int receiveTargetID) {
		return this.stayRegisterMapper.selectTeamConsumption(receiveTargetID);
	}

	public List<StayRegisterPo> ajaxSelectTeamRoom(int receiveTargetID,
			String roomNumber) {
		return this.stayRegisterMapper.ajaxSelectTeamRoom(receiveTargetID, roomNumber);
	}


	public List<StayRegisterPo> ajaxSelectTeamFormTime(int receiveTargetID,
			Timestamp min, Timestamp max) {
		return this.stayRegisterMapper.ajaxSelectTeamFormTime(receiveTargetID, min, max);
	}


	public List<StayRegisterPo> ajaxSelectTeamDeposit(int receiveTargetID,
			Timestamp min, Timestamp max) {
		return this.stayRegisterMapper.ajaxSelectTeamDeposit(receiveTargetID, min, max);
	}


	public List<StayRegisterPo> ajaxSelectTeamConsumption(int receiveTargetID,
			Timestamp min, Timestamp max) {
		return this.stayRegisterMapper.ajaxSelectTeamConsumption(receiveTargetID, min, max);
	}


	public List<StayRegisterPo> selectDepositJinJianBan(int id) {
		return this.stayRegisterMapper.selectDepositJinJianBan(id);
	}


	public List<StayRegisterPo> selectConsumptionJinJianBan(int id) {
		return this.stayRegisterMapper.selectConsumptionJinJianBan(id);
	}


	public StayRegisterPo selectInformationXiangQingBan(int id) {
		return this.stayRegisterMapper.selectInformationXiangQingBan(id);
	}


	public int changOverTeam(int id, int receiveTargetID) {
		return this.stayRegisterMapper.changOverTeam(id, receiveTargetID);
	}


	public List<StayRegisterPo> selectFormTeamIdTwo(int isBillID) {
		return this.stayRegisterMapper.selectFormTeamIdTwo(isBillID);
	}


	public Page<StayRegisterPo> pageFuzzyselectThree(int isBillID,
			String roomNumber, Page<StayRegisterPo> vo) {
		int start=0;
		if (vo.getCurrentPage()>1) {
			start=(vo.getCurrentPage()-1)*vo.getPageSize();
		}
		List<StayRegisterPo> list= stayRegisterMapper.pageFuzzyselectThree(isBillID, roomNumber,start, vo.getPageSize());
		vo.setResult(list);
		int count= stayRegisterMapper.countFuzzyselectThree(isBillID, roomNumber);
		vo.setTotal(count);
		return vo;
	}



	public List<StayRegisterPo> selectShuJuTongJi(Timestamp min, Timestamp max) {
		return this.stayRegisterMapper.selectShuJuTongJi(min, max);
	}
	
	
	
	
	
	
	
	
	
	
/*-------------------------------------FinancialStatistics--------------------------------------------------------*/

	public Page<StayRegisterPo> pageFuzzyselectFour(Page<StayRegisterPo> vo) {
		int start=0;
		if (vo.getCurrentPage()>1) {
			start=(vo.getCurrentPage()-1)*vo.getPageSize();
		}
		List<StayRegisterPo> list= stayRegisterMapper.pageFuzzyselectFour(start, vo.getPageSize());
		vo.setResult(list);
		int count= stayRegisterMapper.countFuzzyselectFour();
		vo.setTotal(count);
		return vo;
	}

	public Page<StayRegisterPo> pageFuzzyselectFive(Timestamp min,
			Timestamp max, Page<StayRegisterPo> vo) {
		int start=0;
		if (vo.getCurrentPage()>1) {
			start=(vo.getCurrentPage()-1)*vo.getPageSize();
		}
		List<StayRegisterPo> list= stayRegisterMapper.pageFuzzyselectFive(min, max,start, vo.getPageSize());
		vo.setResult(list);
		int count= stayRegisterMapper.countFuzzyselectFive(min, max);
		vo.setTotal(count);
		return vo;
	}

	public List<StayRegisterPo> selectPayJingJianBanNot() {
		return this.stayRegisterMapper.selectPayJingJianBanNot();
	}

	public List<StayRegisterPo> selectPayStayNumberNot() {
		return this.stayRegisterMapper.selectPayStayNumberNot();
	}

	public List<StayRegisterPo> selectPayXiaoFeiNot() {
		return this.stayRegisterMapper.selectPayXiaoFeiNot();
	}

	public List<StayRegisterPo> selectPayJingJianBan(Timestamp min,
			Timestamp max) {
		return this.stayRegisterMapper.selectPayJingJianBan(min, max);
	}

	public List<StayRegisterPo> selectPayStayNumber(Timestamp min, Timestamp max) {
		return this.stayRegisterMapper.selectPayStayNumber(min, max);
	}

	public List<StayRegisterPo> selectPayXiaoFei(Timestamp min, Timestamp max) {
		return this.stayRegisterMapper.selectPayXiaoFei(min, max);
	}

	public List<StayRegisterPo> selectAllInformation(int id) {
		return this.stayRegisterMapper.selectAllInformation(id);
	}

	public List<StayRegisterPo> selectXiaoFeiMingXi(int id) {
		return this.stayRegisterMapper.selectXiaoFeiMingXi(id);
	}

	public int updateStayRegisterPredetermineID(Integer predetermineID,
			Integer id) {
		return this.stayRegisterMapper.updateStayRegisterPredetermineID(predetermineID, id);
	}


	public StayRegisterPo selectSumconst(int id) {
		return this.stayRegisterMapper.selectSumconst(id);
	}
}
