package com.example.waimai.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.waimai.pojo.contentNavData;
import com.example.waimai.pojo.storeItem;

import java.util.List;

public interface storeItemService extends IService<storeItem> {
    List<storeItem> selectAllItem() throws Exception;
}
