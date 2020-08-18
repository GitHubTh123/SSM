package com.baidu.service.impl;

import com.baidu.dao.ProvinceDao;
import com.baidu.domain.Province;
import com.baidu.service.ProvinceService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class ProvinceServiceImpl implements ProvinceService {
    @Resource
    private ProvinceDao dao;
    @Override
    public int insertProvince(Province province) {
        return dao.insertProvince(province);
    }

    @Override
    public int updateProvince(Province province) {
        return dao.updateProvince(province);
    }

    @Override
    public Province byId(Integer id) {
        return dao.byId(id);
    }

    @Override
    public List<Province> all() {
        return dao.all();
    }

    @Override
    public int deleteProvince(Integer id) {
        return dao.deleteProvince(id);
    }
}
