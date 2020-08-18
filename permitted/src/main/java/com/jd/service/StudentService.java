package com.jd.service;

import com.jd.domain.Student;

import java.util.List;

public interface StudentService {
    int insertStudent(Student student);
    int updateStudent(Student student);
    int deleteStudent(Integer id);
    List<Student> allStudent();
    Student byId(Integer id);
    int delSome(int [] arr);
}
