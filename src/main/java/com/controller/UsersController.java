package com.controller;

import com.entity.Users;
import com.service.UsersService;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (Users)表控制层
 *
 * @author makejava
 * @since 2020-05-26 13:13:50
 */
@RestController
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
    public Users selectOne(Integer id) {
        return this.usersService.queryById(id);
    }

    @GetMapping("login")
    public String login(String uLoginname ,String uPass){
        System.out.println("uLoginname : " + uLoginname);
        System.out.println("uPass : " + uPass);
        return "index.jsp";
    }

}