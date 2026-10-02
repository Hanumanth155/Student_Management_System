package com.studentapp.dao;

import com.studentapp.conn.Connect;
import com.studentapp.dto.Studentdto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StudentDaoImp implements StudentDao{
    Connection con ;
    public StudentDaoImp(){
        con = Connect.getConnect();
    }

    @Override
    public boolean insertStudent(Studentdto s) {
        PreparedStatement ps = null;
        String query = "INSERT INTO STUDENT VALUES(0 , ?,?,?,?,?,?,SYSDATE());";
        int res=0;
        try {
            ps = con.prepareStatement(query);
            ps.setString(1,s.getSname());
            ps.setString(2,s.getEmail());
            ps.setLong(3,s.getPhone());
            ps.setString(4,s.getBranch());
            ps.setString(5,s.getLocation());
            ps.setString(6,s.getPassword());
            res= ps.executeUpdate();

        } catch (SQLException e) {
        e.printStackTrace();
        }

        return res > 0;
    }

    @Override
    public boolean updateStudent(Studentdto s) {
        PreparedStatement ps=  null;
        String query = "UPDATE student SET SNAME = ?, EMAIL = ?, phone = ?, BRANCH = ?, LOCATION = ?,pass = ? WHERE SID = ?";
        int res =0;
        try {
            ps = con.prepareStatement(query);
            ps.setString(1,s.getSname());
            ps.setString(2,s.getEmail());
            ps.setLong(3,s.getPhone());
            ps.setString(4,s.getBranch());
            ps.setString(5,s.getLocation());
            ps.setString(6,s.getPassword());
            ps.setInt(7,s.getSid());
            res= ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
return res>0;
    }

    @Override
    public boolean deleteStudent(Studentdto s) {
        PreparedStatement ps =null;
        String query = "DELETE FROM STUDENT WHERE SID = ?; ";
        int res =0;
        try {
            ps = con.prepareStatement(query);
            ps.setInt(1,s.getSid());

            res = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res>0;
    }

    @Override
    public Studentdto getStudent(String email, String password) {
        PreparedStatement ps = null;
        Studentdto s =null;
        String query = "select * from student where email =? and pass =? ;";
        try {
            ps = con.prepareStatement(query);
            ps.setString(1,email);
            ps.setString(2,password);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                s= new Studentdto();
                s.setSid( rs.getInt("sid"));
                s.setSname(rs.getString("sname"));
                s.setEmail(rs.getString("email"));
                s.setPhone(rs.getLong("phone"));
                s.setBranch( rs.getString("Branch"));
                s.setLocation(rs.getString("Location"));
                s.setPassword(rs.getString("pass"));
               s.setDate(rs.getString("dat"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return s;
    }

    @Override
    public Studentdto getStudent(String email, long phone) {
        PreparedStatement ps = null;
        Studentdto s =null;
        String query = "select * from student where email =? and phone =? ;";
        try {
            ps = con.prepareStatement(query);
            ps.setString(1,email);
            ps.setLong(2,phone);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                s= new Studentdto();
                s.setSid( rs.getInt("SID"));
                s.setSname(rs.getString("SNAME"));
                s.setEmail(rs.getString("EMAIL"));
                s.setPhone(rs.getLong("phone"));
                s.setBranch( rs.getString("BRANCH"));
                s.setLocation(rs.getString("LOCATION"));
                s.setPassword(rs.getString("pass"));
               s.setDate(rs.getString("dat"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return s;
    }

    @Override
    public ArrayList<Studentdto> getStudent() {
        PreparedStatement ps= null;
        String query = "SELECT * FROM STUDENT WHERE SID!=5;";
        Studentdto s= null;
        ArrayList<Studentdto> list = new ArrayList<Studentdto>();
        try {
            ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
        while (rs.next()){
            s= new Studentdto();
            s.setSid( rs.getInt("sid"));
            s.setSname(rs.getString("sname"));
            s.setEmail(rs.getString("email"));
            s.setPhone(rs.getLong("phone"));
            s.setBranch( rs.getString("Branch"));
            s.setLocation(rs.getString("Location"));
            s.setPassword(rs.getString("pass"));
           s.setDate(rs.getString("dat"));
            list.add(s);
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
        return list;
    }
}
