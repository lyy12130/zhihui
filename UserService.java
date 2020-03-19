package com.zhineng.service;

import com.alibaba.fastjson.JSON;
import com.zhineng.bean.ResultInfo;
import com.zhineng.bean.User;
import com.zhineng.dao.UserDao;

import java.util.List;

public class UserService {
    UserDao userDao = new UserDao();
    public String queryAll(){
        //查询数据，调用dao层查询数据

        List<User> userList = userDao.queryAll();

        //userList ===> JSON String
        String s = JSON.toJSONString(userList);

        return s;
    }

    public String register(User user){
        //处理注册业务  数据存到数据库  调用Dao层存储数据
        //布尔值与String不符
        //数据库不会返回bool值，返回int值0添加0条数据，即添加失败/1 添加成功
        int addFlag = userDao.addUser(user);
        //true,false   ====>  JSON字符串{"name":"zhangsan"}
        ResultInfo resultInfo = new ResultInfo();
        if(addFlag == 0){
            resultInfo.setFlag(false);
        }else {
            resultInfo.setFlag(true);
        }

        String s = JSON.toJSONString(resultInfo);
        return s;
    }
}

