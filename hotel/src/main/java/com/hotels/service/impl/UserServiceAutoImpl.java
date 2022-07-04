package com.hotels.service.impl;

import com.hotels.mapper.UsersMapperAuto;
import com.hotels.page.Page;
import com.hotels.pojo.Users;
import com.hotels.pojo.UsersExample;
import com.hotels.service.UserServieAuto;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;


@Transactional
@Service(value = "userServiceAuto")
public class UserServiceAutoImpl implements UserServieAuto {
    @Resource
    private UsersMapperAuto usersMapperAuto;


    public int selectIsExit(String userName) {
        UsersExample usersExample = new UsersExample();
        usersExample.createCriteria().andUsernameEqualTo(userName);
        List<Users> users = usersMapperAuto.selectByExample(usersExample);
        return users.size();
    }

    public int deleteByUserId(Integer id) {
        int i = usersMapperAuto.deleteByPrimaryKey(id);
        return i;
    }

    public int insertUsers(Users users) {
        int insert = usersMapperAuto.insert(users);

        return insert;
    }

    public int updateByUserName(Users user) {
        return usersMapperAuto.updateByPrimaryKey(user);
    }

    public Users selectUserById(Integer id) {
        return usersMapperAuto.selectByPrimaryKey(id);
    }

    public List<Users> selectByExample(UsersExample example) {
        return usersMapperAuto.selectByExample(example);
    }

    public Page<Users> pageFuzzyselect(String name, Page<Users> vo) {
        int start =0;
        if(vo.getCurrentPage()>1){
            start=(vo.getCurrentPage()-1)*vo.getPageSize();
        }
        List<Users> usersList = usersMapperAuto.pageFuzzyselect(name, start, vo.getPageSize());
        vo.setResult(usersList);
        int count = usersMapperAuto.countFuzzyselect(name);
        vo.setTotal(count);
        return vo;
    }


    public List<Users> selectAll() {
        return usersMapperAuto.selectByExample(null);
    }


    public List<Users> selectAjaxList(String userName) {
        UsersExample usersExample = new UsersExample();
        usersExample.createCriteria().andUsernameLike(userName);


        return usersMapperAuto.selectByExample(usersExample);
    }
}
