package com.hotels.service;

import com.hotels.page.Page;
import com.hotels.pojo.Users;
import com.hotels.pojo.UsersExample;

import java.util.List;

public interface UserServieAuto {
    /**
     * 根据用户名判断是否存在
     *
     * @param userName
     * @return
     */
    public int selectIsExit(String userName);

    public int deleteByUserId(Integer id);

    public int insertUsers(Users users);

    public int updateByUserName(Users user);

    public Users selectUserById(Integer id);

    List<Users> selectByExample(UsersExample example);

    //分页需要
    public Page<Users> pageFuzzyselect(String name, Page<Users> vo);

    //查询所有数据  非本派所用
    public List<Users> selectAll();

    //模糊查询 运用 Ajax 非分页
    public List<Users> selectAjaxList(String userName);

}
