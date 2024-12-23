package com.example.waimai.controller;


import com.example.waimai.pojo.contentNavData;
import com.example.waimai.pojo.storeItem;
import com.example.waimai.service.contentNavDataService;
import com.example.waimai.service.storeItemService;
import com.example.waimai.util.Result;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

@Slf4j
@Controller
@RestController
@RequestMapping("/waimai")
public class contentNavDataController {

    @Resource
    contentNavDataService contentNavDataService;

    @Resource
    storeItemService storeItemService;

    @GetMapping("/GetAllFood")
    public Result selectAllFoodMsg() throws Exception{
        try {
            List<contentNavData> dataList =contentNavDataService.sellectAll();
            return Result.success(dataList);
        }catch (Exception e){
            return Result.failure("没有获取成功");
        }
    }

    @GetMapping("/GetAllItem")
    public Result selectAllItem() throws Exception{
        try {
            List<storeItem> dataList =storeItemService.selectAllItem();
            return Result.success(dataList);
        }catch (Exception e){
            return Result.failure("没有获取成功");
        }
    }
}
