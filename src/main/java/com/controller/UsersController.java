package com.controller;

import com.entity.Users;
import com.service.UsersService;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.http.HttpRequest;
import java.util.*;

/**
 * (Users)表控制层
 *
 * @author makejava
 * @since 2020-05-26 13:13:50
 */
@Controller
@RequestMapping("users")
public class UsersController {
    /**
     * 服务对象
     */
    @Resource

    private UsersService usersService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    @ResponseBody
    public Users selectOne(Integer id) {
        return this.usersService.queryById(id);
    }

    @RequestMapping("login")
    public void login(Users users, HttpServletRequest request , HttpServletResponse response) throws IOException {
        response.setContentType("text/html;charset=UTF-8");
        Users user =  this.usersService.login(users);
        PrintWriter writer =  response.getWriter();
        if(user == null){
            writer.print("<script>alert('错误!请检查你的用户名或密码');location.href='../login.jsp'</script>");
        }
        else {
            request.getSession().setAttribute("users",user);
            writer.print("<script>location.href='../index.jsp'</script>");
        }
    }

    @GetMapping("showAll")
    @ResponseBody
    public List<Users> showAll(int pageNum  , int size){
        return this.usersService.queryAllByLimit(pageNum -1  ,size);
    }
}