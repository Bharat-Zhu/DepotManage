package com.depot.models;

import java.sql.Date;

public class Member {
    private int member_id;
    private String member_name;
    private String member_account;
    private String member_pwd;
    private int authority_id;
    private int del_flg;
    private int creator_id;
    private Date create_datetime;
    private int updater_id;
    private Date update_datetime;

    public int getMember_id() {
        return member_id;
    }

    public void setMember_id(int member_id) {
        this.member_id = member_id;
    }

    public String getMember_name() {
        return member_name;
    }

    public void setMember_name(String member_name) {
        this.member_name = member_name;
    }

    public String getMember_account() {
        return member_account;
    }

    public void setMember_account(String member_account) {
        this.member_account = member_account;
    }

    public String getMember_pwd() {
        return member_pwd;
    }

    public void setMember_pwd(String member_pwd) {
        this.member_pwd = member_pwd;
    }

    public int getAuthority_id() {
        return authority_id;
    }

    public void setAuthority_id(int authority_id) {
        this.authority_id = authority_id;
    }

    public int getDel_flg() {
        return del_flg;
    }

    public void setDel_flg(int del_flg) {
        this.del_flg = del_flg;
    }

    public int getCreator_id() {
        return creator_id;
    }

    public void setCreator_id(int creator_id) {
        this.creator_id = creator_id;
    }

    public Date getCreate_datetime() {
        return create_datetime;
    }

    public void setCreate_datetime(Date create_datetime) {
        this.create_datetime = create_datetime;
    }

    public int getUpdater_id() {
        return updater_id;
    }

    public void setUpdater_id(int updater_id) {
        this.updater_id = updater_id;
    }

    public Date getUpdate_datetime() {
        return update_datetime;
    }

    public void setUpdate_datetime(Date update_datetime) {
        this.update_datetime = update_datetime;
    }
}
