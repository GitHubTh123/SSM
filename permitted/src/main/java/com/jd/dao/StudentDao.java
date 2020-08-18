package com.jd.dao;

import com.jd.domain.Student;

import java.util.List;

public interface StudentDao {
    int insertStudent(Student student);
    int updateStudent(Student student);
    int deleteStudent(Integer id);
    List<Student> allStudent();
    Student byId(Integer id);
    int delSome(int [] arr);
}
