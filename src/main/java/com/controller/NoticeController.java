package com.controller;

import com.entity.Notice;
import com.service.NoticeService;
import java.util.List;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;


/**
 * (Notice)表控制层
 *
 * @author makejava
 * @since 2020-05-26 13:13:32
 */
@RestController
@RequestMapping("notice")
public class NoticeController {
    /**
     * 服务对象
     */
    @Resource
    private NoticeService noticeService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Notice selectOne(Integer id) {
        return this.noticeService.queryById(id);
    }

    @RequestMapping("showAll")
    public List<Notice> showAll(Model model){
        return this.noticeService.queryAllByLimit(0,100);
    }

    @RequestMapping("update")
    @ResponseBody
    public String update(Notice notice, HttpServletResponse resp){
        resp.setContentType("text/html;charset=UTF-8");
        this.noticeService.update(notice);
        return "<script>window.alert('修改成功!');location.href='../notice.jsp'</script>";
    }
}