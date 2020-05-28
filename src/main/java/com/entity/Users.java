package com.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.io.Serializable;

/**
 * (Users)实体类
 *
 * @author makejava
 * @since 2020-05-26 13:13:50
 */
public class Users implements Serializable {
    private static final long serialVersionUID = -59952611320089347L;
    
    private Integer uId;
    
    private String uLoginname;
    
    private String uPass;
    
    private String uState;
    
    private String uName;


    private Date uDate;


    public Integer getUId() {
        return uId;
    }

    public void setUId(Integer uId) {
        this.uId = uId;
    }

    public String getULoginname() {
        return uLoginname;
    }

    public void setULoginname(String uLoginname) {
        this.uLoginname = uLoginname;
    }

    public String getUPass() {
        return uPass;
    }

    public void setUPass(String uPass) {
        this.uPass = uPass;
    }

    public String getUState() {
        return uState;
    }

    public void setUState(String uState) {
        this.uState = uState;
    }

    public String getUName() {
        return uName;
    }

    public void setUName(String uName) {
        this.uName = uName;
    }

    public Date getUDate() {
        return uDate;
    }

    public void setUDate(Date uDate) {
        this.uDate = uDate;
    }

}