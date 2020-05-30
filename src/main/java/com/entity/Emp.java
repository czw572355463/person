package com.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.io.Serializable;

/**
 * (Emp)实体类
 *
 * @author makejava
 * @since 2020-05-25 10:05:13
 */
public class Emp implements Serializable {
    private static final long serialVersionUID = 754830404830995963L;
    
    private Integer eId;
    
    private Integer dId;
    
    private Integer jId;
    
    private String eName;
    
    private String eCardid;
    
    private String eAddress;
    
    private String ePostcode;
    
    private String ePhone;
    
    private String eEmail;
    
    private String eSex;

    private Job job;

    private Dept dept;



    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date eBirthday;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date eCreatedate;


    public Integer getEId() {
        return eId;
    }

    public void setEId(Integer eId) {
        this.eId = eId;
    }

    public Integer getDId() {
        return dId;
    }

    public void setDId(Integer dId) {
        this.dId = dId;
    }

    public Integer getJId() {
        return jId;
    }

    public void setJId(Integer jId) {
        this.jId = jId;
    }

    public String getEName() {
        return eName;
    }

    public void setEName(String eName) {
        this.eName = eName;
    }

    public String getECardid() {
        return eCardid;
    }

    public void setECardid(String eCardid) {
        this.eCardid = eCardid;
    }

    public String getEAddress() {
        return eAddress;
    }

    public void setEAddress(String eAddress) {
        this.eAddress = eAddress;
    }

    public String getEPostcode() {
        return ePostcode;
    }

    public void setEPostcode(String ePostcode) {
        this.ePostcode = ePostcode;
    }

    public String getEPhone() {
        return ePhone;
    }

    public void setEPhone(String ePhone) {
        this.ePhone = ePhone;
    }

    public String getEEmail() {
        return eEmail;
    }

    public void setEEmail(String eEmail) {
        this.eEmail = eEmail;
    }

    public String getESex() {
        return eSex;
    }

    public void setESex(String eSex) {
        this.eSex = eSex;
    }

    public Date getEBirthday() {
        return eBirthday;
    }

    public void setEBirthday(Date eBirthday) {
        this.eBirthday = eBirthday;
    }

    public Date getECreatedate() {
        return eCreatedate;
    }

    public void setECreatedate(Date eCreatedate) {
        this.eCreatedate = eCreatedate;
    }

    public Job getJob() {
        return job;
    }

    public void setJob(Job job) {
        this.job = job;
    }

    public Dept getDept() {
        return dept;
    }

    public void setDept(Dept dept) {
        this.dept = dept;
    }
}