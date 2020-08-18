package com.jd.service.impl;

import com.jd.dao.StudentDao;
import com.jd.domain.Student;
import com.jd.service.StudentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class StudentServiceImpl implements StudentService {
    @Resource
    private StudentDao dao;
    @Override
    public int insertStudent(Student student) {
        return dao.insertStudent(student);
    }

    @Override
    public int updateStudent(Student student) {
        return dao.updateStudent(student);
    }

    @Override
    public int deleteStudent(Integer id) {
        return dao.deleteStudent(id);
    }

    @Override
    public List<Student> allStudent() {
        return dao.allStudent();
    }

    @Override
    public Student byId(Integer id) {
        return dao.byId(id);
    }

    @Override
    public int delSome(int[] arr) {
        return dao.delSome(arr);
    }
}
