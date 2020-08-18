package com.bjpowernode.controller;

import com.bjpowernode.domain.Student;
import com.bjpowernode.service.StudentService;
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
    private StudentService service;

    @RequestMapping("/main.do")
    @ResponseBody
    public List<Student> toadd(Student student) {
        return service.allStudent();
    }

    @RequestMapping("/toadd.do")
    public String toAdd() {
        return "add";
    }

    @RequestMapping("/add.do")
    public String add(Student student) {
        String s = "";
        if (service.insertStudent(student) > 0) {
            s = "redirect:/all.jsp";
        }
        return s;
    }

    @RequestMapping("/xiugai.do")
    public String xiugai(Student student) {
        String s = "";
        if (service.updateStudent(student) > 0) {
            s = "redirect:/all.jsp";
        }
        return s;
    } @RequestMapping("/delete.do")
    public String del(Integer id) {
        String s = "";
        if (service.deleteStudent(id) > 0) {
            s = "redirect:/all.jsp";
        }
        return s;
    }

    @RequestMapping("/toxiugai.do")
    public ModelAndView toXg(Integer id) {

        ModelAndView mv = new ModelAndView();
        Student student = service.byId(id);
        if (student != null) {

            mv.addObject("stu", student);
            mv.setViewName("xiugai");
        }
        return mv;
    }
    @RequestMapping("/delSome.do")
    public String del(int [] arr) {
        String s = "";
        if (service.delSome(arr) > 0) {
            s = "redirect:/all.jsp";
        }
        return s;
    }
}
