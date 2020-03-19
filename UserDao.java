package com.zhineng.dao;

import com.zhineng.bean.User;
import com.zhineng.utils.C3p0Utils;
import com.zhineng.utils.UuidUtil;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

/**
 * @version V1.0
 * @author: buguniao
 * @date: 2019/7/22 9:31
 * @description: 从数据库中查询数据
 */
public class UserDao {

    JdbcTemplate jdbcTemplate = new JdbcTemplate(C3p0Utils.getDataSource());

    /**
     * 查询所有数据
     * @return
     */
    public List<User> queryAll() {

        //1、初始化JdbcTemplate模板：创建JdbcTemplate对象
        //2、写sql
        String sql = "SELECT * FROM tuser";
        //3、执行sql，返回值 List-集合
        List<User> userList = jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(User.class));

        return userList;
    }


    /**
     * 添加数据
     * @param user
     * @return
     */
    public int addUser(User user) {

        //写SQL：
        String sql = "INSERT INTO tuser VALUES(NULL,?,?,?,?,?,?,?,?)";
        //执行SQL：
        int update = jdbcTemplate.update(sql,
                                        user.getUserName(),
                                        user.getUserSex(),
                                        user.getUserPassword(),
                                        user.getUserBirthday(),
                                        user.getUserEmail(),
                                        user.getUserAddress(),
                                        user.getUserMoblie(),
                                        user.getUserStatus(),
                                        UuidUtil.getUuid());
        return update;
    }

    /*public static int selectByName (String UserID){
        try{
            String sql ="select count(*) from user where userID=?";

        }
    }*/
}

