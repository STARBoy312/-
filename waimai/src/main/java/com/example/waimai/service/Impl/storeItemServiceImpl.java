package com.example.waimai.service.Impl;


import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.waimai.mapper.storeItemMapper;
import com.example.waimai.pojo.contentNavData;
import com.example.waimai.pojo.storeItem;
import com.example.waimai.service.storeItemService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.function.Function;

@Service
public class storeItemServiceImpl extends ServiceImpl<storeItemMapper,storeItem> implements storeItemService {

    @Resource
    storeItemMapper storeItemMapper;
    @Override
    public List<storeItem> selectAllItem() throws Exception {
        List<storeItem> datalist = null;
        try {
            datalist = storeItemMapper.selectList(null);
        }catch (Exception e){
            throw new Exception(e);
        }
        return datalist;
    }

}
