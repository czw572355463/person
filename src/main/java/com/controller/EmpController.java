package com.controller;

import com.entity.Dept;
import com.entity.Emp;
import com.entity.Job;
import com.service.DeptService;
import com.service.EmpService;
import java.util.List;

import com.service.JobService;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

/**
 * (Emp)表控制层
 *
 * @author makejava
 * @since 2020-05-25 10:05:15
 */
@RestController
@RequestMapping("emp")
public class EmpController {
    /**
     * 服务对象
     */
    @Resource
    private EmpService empService;

    @Resource
    private JobService jobService;

    @Resource
    private DeptService deptService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Emp selectOne(Integer id) {
        return this.empService.queryById(id);
    }

    @GetMapping("showAll")
    public List<Emp> showAll(int pageNum , int size){

        return this.empService.queryAllByLimit(pageNum, size);
    }

    @RequestMapping("showAllDept")
    @ResponseBody
    public List<Dept> showAllJob(){
        return this.deptService.queryAllByLimit(1,100);
    }

    @RequestMapping("showAllJob")
    @ResponseBody
    public List<Job> showAllDept(){
        return this.jobService.queryAllByLimit(0,100);
    }
    @RequestMapping("update")
    public String update(Emp emp){
        this.empService.update(emp);
        return "<script>window.alert('修改成功!');location.href='../emp.jsp'</script>";
    }

}