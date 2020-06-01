package com.controller;

import com.entity.Job;
import com.service.JobService;
import java.util.List;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

/**
 * (Job)表控制层
 *
 * @author makejava
 * @since 2020-05-26 13:13:18
 */
@RestController
@RequestMapping("job")
public class JobController {
    /**
     * 服务对象
     */
    @Resource
    private JobService jobService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    @ResponseBody
    public Job selectOne(Integer id) {
        return this.jobService.queryById(id);
    }


    @GetMapping("showAll")
    public List<Job> showAll(int pageNum,int size){
        return this.jobService.queryAllByLimit(pageNum - 1 , size);
    }

    @RequestMapping("update")
    @ResponseBody
    public String update(Job job, HttpServletResponse resp){
        resp.setContentType("text/html;charset=UTF-8");
        this.jobService.update(job);
        return "<script>window.alert('修改成功!');location.href='../job.jsp'</script>";
    }
}