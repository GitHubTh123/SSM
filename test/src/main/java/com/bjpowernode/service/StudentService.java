package com.bjpowernode.service;

import com.bjpowernode.domain.Student;

import java.util.List;

public interface StudentService {
    int insertStudent(Student student);
    int deleteStudent(Integer id);
    int updateStudent(Student student);
    List<Student> allStudent();
    Student byId(Integer id);
    int delSome(int [] arr);
}
