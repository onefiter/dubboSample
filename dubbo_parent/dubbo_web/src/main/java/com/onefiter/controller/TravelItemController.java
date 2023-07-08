package com.onefiter.controller;

import com.alibaba.dubbo.config.annotation.Reference;
import com.onefiter.constant.MessageConstant;
import com.onefiter.entity.Result;
import com.onefiter.pojo.TravelItem;
import com.onefiter.service.TravelItemService;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * author: onefiter
 * date: 2023/7/7
 */

@RestController
@RequestMapping( "/travelItem")
public class TravelItemController {

    @Reference
    private TravelItemService travelItemService;

    @RequestMapping("/add")
    public Result add(@RequestBody TravelItem travelItem) {
        try {
            travelItemService.add(travelItem);
        } catch (Exception e) {
            return new Result(false, MessageConstant.ADD_TRAVELITEM_FAIL);
        }
        return  new Result(true, MessageConstant.ADD_TRAVELGROUP_SUCCESS);
    }
}
