package com.jd.controller;

import com.jd.domain.Student;
import com.jd.service.StudentService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/student")
public class MyController {
    @Resource
    private StudentService studentService;
    @RequestMapping("/add.do")
    public ModelAndView addStu(Student student){
        ModelAndView mv = new ModelAndView();
        if(studentService.insertStudent(student)>0){
            mv.addObject("msg",student.getName()+"添加成功");
            mv.setViewName("msg");
        }
        return mv;
    }
    @ResponseBody
    @RequestMapping("/all.do")
    public List<Student> all(){
        return studentService.allStudent();
    }
    @RequestMapping("/xiugai.do")
public ModelAndView xiugai(Integer id){
        ModelAndView mv =new ModelAndView();
        Student student = studentService.byId(id);
        if(student!=null){
            mv.addObject("stu",student);
            mv.setViewName("xiugai");
        }
        return mv;
    }
    @RequestMapping("/update.do")
    public String update(Student student){
        String s= "";
        if(studentService.updateStudent(student)>0){
            s="redirect:/all.jsp";
        }
        return s;
    } @RequestMapping("/delete.do")
    public String delete(Integer id){
        String s= "";
        if(studentService.deleteStudent(id)>0){
            s="redirect:/all.jsp";
        }
        return s;
    }

    @RequestMapping("/delSome.do")
    public String delSome(int[] arr){
        String s= "";
        if(studentService.delSome(arr)>0){
            s="redirect:/all.jsp";
        }
        return s;
    }
}

