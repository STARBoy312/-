package com.example.waimai.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.waimai.pojo.contentNavData;

import java.util.List;

public interface contentNavDataService  extends IService<contentNavData> {

    List<contentNavData> sellectAll() throws Exception;
}
