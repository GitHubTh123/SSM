package com.baidu.service;

import com.baidu.domain.Province;

import java.util.List;

public interface ProvinceService {
    int insertProvince(Province province);

    int updateProvince(Province province);

    Province byId(Integer id);

    List<Province> all();

    int deleteProvince(Integer id);
}
