package com.depot.models;

import java.sql.Date;

public class User {
    private int id;
    private String userNumber;
    private String userPwd;
    private String userName;
    private String email;
    private Date birth;
    private int sex;
    private String phone;
    private int delFlg;
    private int creatorId;
    private Date createDatetime;
    private int updaterId;
    private Date updateDatetime;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserNumber() {
        return userNumber;
    }

    public void setUserNumber(String userNumber) {
        this.userNumber = userNumber;
    }

    public String getUserPwd() {
        return userPwd;
    }

    public void setUserPwd(String userPwd) {
        this.userPwd = userPwd;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getBirth() {
        return birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getDelFlg() {
        return delFlg;
    }

    public void setDelFlg(int delFlg) {
        this.delFlg = delFlg;
    }

    public int getCreatorId() {
        return creatorId;
    }

    public void setCreatorId(int creatorId) {
        this.creatorId = creatorId;
    }

    public Date getCreateDatetime() {
        return createDatetime;
    }

    public void setCreateDatetime(Date createDatetime) {
        this.createDatetime = createDatetime;
    }

    public int getUpdaterId() {
        return updaterId;
    }

    public void setUpdaterId(int updaterId) {
        this.updaterId = updaterId;
    }

    public Date getUpdateDatetime() {
        return updateDatetime;
    }

    public void setUpdateDatetime(Date updateDatetime) {
        this.updateDatetime = updateDatetime;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", userNumber='" + userNumber + '\'' +
                ", userPwd='" + userPwd + '\'' +
                ", userName='" + userName + '\'' +
                ", email='" + email + '\'' +
                ", birth=" + birth +
                ", sex=" + sex +
                ", phone='" + phone + '\'' +
                ", delFlg=" + delFlg +
                ", creatorId=" + creatorId +
                ", createDatetime=" + createDatetime +
                ", updaterId=" + updaterId +
                ", updateDatetime=" + updateDatetime +
                '}';
    }
}
