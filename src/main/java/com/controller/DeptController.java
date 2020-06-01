package com.controller;

import com.entity.Dept;
import com.service.DeptService;
import java.util.List;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

/**
 * (Dept)表控制层
 *
 * @author makejava
 * @since 2020-05-26 13:12:56
 */
@RestController
@RequestMapping("dept")
public class DeptController {

    /**
     * 服务对象
     */
    @Resource
    private DeptService deptService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Dept selectOne(Integer id) {
        return this.deptService.queryById(id);
    }

    @GetMapping("showAll")
    @ResponseBody
    public List<Dept> showAll(int pageNum , int size){
        List<Dept> deptList = this.deptService.queryAllByLimit(pageNum - 1,size);
        return deptList;
    }

    @RequestMapping("update")
    @ResponseBody
    public String update(Dept dept, HttpServletResponse resp){
        resp.setContentType("text/html;charset=UTF-8");
        this.deptService.update(dept);
        return "<script>window.alert('修改成功!');location.href='../dept.jsp'</script>";
    }
}