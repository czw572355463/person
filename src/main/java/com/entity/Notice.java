package com.entity;

import java.util.Date;
import java.io.Serializable;

/**
 * (Notice)实体类
 *
 * @author makejava
 * @since 2020-05-26 13:13:32
 */
public class Notice implements Serializable {
    private static final long serialVersionUID = 519071271314355042L;
    
    private Integer nId;
    
    private String nTitle;
    
    private String nContent;
    
    private Date dCreatedate;
    
    private Integer uId;


    public Integer getNId() {
        return nId;
    }

    public void setNId(Integer nId) {
        this.nId = nId;
    }

    public String getNTitle() {
        return nTitle;
    }

    public void setNTitle(String nTitle) {
        this.nTitle = nTitle;
    }

    public String getNContent() {
        return nContent;
    }

    public void setNContent(String nContent) {
        this.nContent = nContent;
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