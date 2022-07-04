package com.hotels.service.impl;

import com.hotels.mapper.LoginlogMapper;
import com.hotels.page.Page;
import com.hotels.pojo.Loginlog;
import com.hotels.service.LoginLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class LoginLogServiceImpl implements LoginLogService {
    @Autowired
    private LoginlogMapper loginlogMapper;

    public int saveLoginLog(Loginlog loginlog) {
       return loginlogMapper.insertSelective(loginlog);
    }


    public List<Loginlog> selectAll() {
        return loginlogMapper.selectByExample(null);
    }


    public Page<Loginlog> pageFuzzyselect(String loginName, Page<Loginlog> vo) {
        int start=0;
        if (vo.getCurrentPage()>1) {
            start=(vo.getCurrentPage()-1)*vo.getPageSize();
        }
        List<Loginlog> list=loginlogMapper.pageFuzzyselect(loginName, start, vo.getPageSize());
        vo.setResult(list);

        int count=this.loginlogMapper.countFuzzyselect(loginName);
        vo.setTotal(count);
        return vo;
    }


    public void updateLoginLogById(Loginlog loginlog) {
        loginlogMapper.updateByPrimaryKey(loginlog);
    }


    public Loginlog selectOne(Integer id) {
        return loginlogMapper.selectByPrimaryKey(id);
    }


    public void deleteByUserId(int parseInt) {
        loginlogMapper.deleteByPrimaryKey(parseInt);
    }

}
