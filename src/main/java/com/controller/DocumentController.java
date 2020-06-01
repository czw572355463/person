package com.controller;

import com.entity.Document;
import com.entity.Users;
import com.service.DocumentService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.UUID;

/**
 * (Document)表控制层
 *
 * @author makejava
 * @since 2020-05-26 13:13:09
 */
@Controller
@RequestMapping("document")
public class DocumentController {

    @Resource
    DocumentService documentService;

    Logger logger = Logger.getLogger(Logger.class);

    @RequestMapping("upload")
    public String upload(@RequestParam(value = "file",required = false) MultipartFile file, HttpServletRequest request,Document document) throws IOException {

        if(file==null || file.getSize()==0){
            return "redirect:/document/showAll";
        }

        //将文件上传到服务器的指定目录下
        String Documentdir = "documents";
        String dir = request.getServletContext().getRealPath(Documentdir);
        String saveFilename = UUID.randomUUID().toString();
        String fileStuffix = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));

        String savePath = dir + "/"+saveFilename + fileStuffix;
        file.transferTo(new File(savePath));

        //将文件保存至数据库中
        Users user = (Users) request.getSession().getAttribute("users");
        document.setuId(user.getUId());
        document.setdFilepath(Documentdir+"/"+saveFilename + fileStuffix);
        document.setdCreatedate(new Date());

        try {
            documentService.insert(document);
        }catch (Exception e){
            e.printStackTrace();
        }

        return "redirect:/document/showAll";
    }

    @RequestMapping("delete")
    public void deleteById(Integer id,@RequestParam(value ="filepath")String path){
        File f = new File(path);
        System.err.println(f.getName());
        f.delete();
        this.documentService.deleteById(id);
    }

    @RequestMapping("showAll")
    public String showAll(Model model){
        model.addAttribute("filelist",documentService.queryAllByLimit(0,100));
        return "fileDownload";
    }


}