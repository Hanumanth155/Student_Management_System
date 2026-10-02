package com.studentapp.dao;

import com.studentapp.dto.Studentdto;

import java.util.ArrayList;

public interface StudentDao {
    public boolean insertStudent(Studentdto s);
    public boolean updateStudent(Studentdto s);
    public boolean deleteStudent(Studentdto s);
    public Studentdto getStudent(String email,String password);
    public Studentdto getStudent(String email,long phone);
    public ArrayList<Studentdto> getStudent();

}
