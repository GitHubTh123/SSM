package com.bjpowernode.dao;

import com.bjpowernode.domain.Student;

import java.util.List;

public interface StudentDao {

    int insertStudent(Student student);

    int deleteStudent(Integer id);

    int updateStudent(Student student);

    List<Student> allStudent();

    Student byId(Integer id);
    int delSome(int [] arr);
}
