package com.entity;

import java.io.Serializable;

/**
 * (Job)实体类
 *
 * @author makejava
 * @since 2020-05-26 13:13:18
 */
public class Job implements Serializable {
    private static final long serialVersionUID = 181889050996202802L;
    
    private Integer jId;
    
    private String jName;
    
    private String jRemark;


    public Integer getJId() {
        return jId;
    }

    public void setJId(Integer jId) {
        this.jId = jId;
    }

    public String getJName() {
        return jName;
    }

    public void setJName(String jName) {
        this.jName = jName;
    }

    public String getJRemark() {
        return jRemark;
    }

    public void setJRemark(String jRemark) {
        this.jRemark = jRemark;
    }

}