package com.zhineng.servlet;

import com.alibaba.fastjson.JSON;
import com.zhineng.bean.ResultInfo;
import com.zhineng.bean.User;
import com.zhineng.service.UserService;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

@WebServlet("/registerServlet")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //1.接收数据
        Map<String,String[]> map = req.getParameterMap();
        //封装数据
        User user = new User();
        String regieterJson;
        try{
            BeanUtils.populate(user,map);
            //2.处理数据
            UserService userService = new UserService();
            regieterJson = userService.register(user);
        }catch (Exception e){
            e.printStackTrace();
            ResultInfo resultInfo = new ResultInfo();
            resultInfo.setFlag(false);
            resultInfo.getErrorMsg("数据异常，请联系管理员！");
            regieterJson = JSON.toJSONString(resultInfo);
        }
        resp.getWriter().print(regieterJson);
    }
}
