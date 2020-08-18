package com.baidu.controller;

import com.baidu.domain.Province;
import com.baidu.service.ProvinceService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class MyController {
    @Resource
    private ProvinceService service;
@RequestMapping("/add.do")
    public ModelAndView add(Province province) {
        ModelAndView mv = new ModelAndView();
        if (service.insertProvince(province) > 0) {
            mv.addObject("msg", province.getName() + "添加成功");
            mv.setViewName("result");
        }
        return mv;
    }
    @ResponseBody
    @RequestMapping("/all.do")
    public List<Province> all(){
        return service.all();
    }
    @RequestMapping("/xiugai.do")
    public ModelAndView xiugai(Integer id){
        ModelAndView mc = new ModelAndView();
        Province province = service.byId(id);
        mc.addObject("pro",province);
        mc.setViewName("xiugai");
        return mc;
    }
    @RequestMapping("/update.do")
    public String update(Province province){
        String s="";
        if(service.updateProvince(province)>0){
            s="redirect:all.jsp";
        }
        return s;
    } @RequestMapping("/delete.do")
    public String delete(Integer id){
        String s="";
        if(service.deleteProvince(id)>0){
            s="redirect:all.jsp";
        }
        return s;
    }

}
