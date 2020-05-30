package com.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.io.Serializable;

/**
 * (Document)实体类
 *
 * @author makejava
 * @since 2020-05-26 13:13:09
 */
public class Document implements Serializable {
    private static final long serialVersionUID = 626071075782430353L;
    
    private Integer dId;
    
    private String dFilepath;
    
    private String dFilename;
    
    private String dRemark;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date dCreatedate;
    
    private Integer uId;


    public Integer getDId() {
        return dId;
    }

    public void setDId(Integer dId) {
        this.dId = dId;
    }

    public String getdFilepath() {
        return dFilepath;
    }

    public void setdFilepath(String dFilepath) {
        this.dFilepath = dFilepath;
    }

    public String getDFilename() {
        return dFilename;
    }

    public void setDFilename(String dFilename) {
        this.dFilename = dFilename;
    }

    public String getDRemark() {
        return dRemark;
    }

    public void setDRemark(String dRemark) {
        this.dRemark = dRemark;
    }

    public Date getDCreatedate() {
        return dCreatedate;
    }

    public void setDCreatedate(Date dCreatedate) {
        this.dCreatedate = dCreatedate;
    }

    public Integer getUId() {
        return uId;
    }

    public void setUId(Integer uId) {
        this.uId = uId;
    }

}