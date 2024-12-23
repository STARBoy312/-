package com.example.waimai.service.Impl;


import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.waimai.mapper.contentNavDataMapper;
import com.example.waimai.pojo.contentNavData;
import com.example.waimai.service.contentNavDataService;
import com.sun.org.apache.bcel.internal.ExceptionConstants;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class contentNavDataServiceImpl extends ServiceImpl<contentNavDataMapper, contentNavData> implements contentNavDataService {

    @Resource
    contentNavDataMapper contentNavDataMapper;
    @Override
    public List<contentNavData> sellectAll() throws Exception {
        List<contentNavData> datalist = null;
        try {
            datalist = contentNavDataMapper.selectList(null);
        }catch (Exception e){
            throw new Exception(e);
        }
        return datalist;
     }
}
