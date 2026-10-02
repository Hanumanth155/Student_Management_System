package com.studentapp.dto;

public class Studentdto {
    private int sid;
    private String sname;
    private long phone;
    private String email;
    private String branch;
    private String location;
    private String password;
    private String date;
    public int getSid() {
        return sid;
    }
    public void setSid(int sid) {
        this.sid = sid;
    }
    public String getSname() {
        return sname;
    }
    public void setSname(String sname) {
        this.sname = sname;
    }
    public long getPhone() {
        return phone;
    }
    public void setPhone(long phone) {
        this.phone = phone;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getBranch() {
        return branch;
    }
    public void setBranch(String branch) {
        this.branch = branch;
    }
    public String getLocation() {
        return location;
    }
    public void setLocation(String location) {
        this.location = location;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getDate() {
        return date;
    }
    public void setDate(String date) {
        this.date = date;
    }
    @Override
    public String toString() {
        return "\n =========================================\nStudentdto [sid=" + sid + "" +
                "\n sname=" + sname + "\n phone=" + phone + "\n email=" + email + "\n branch="
                + branch + "\n location=" + location + "\n password=" + password + "\n date=" + date + "] ";
    }



}
