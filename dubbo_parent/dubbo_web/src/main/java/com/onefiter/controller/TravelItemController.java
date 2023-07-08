package com.onefiter.controller;

import com.alibaba.dubbo.config.annotation.Reference;
import com.onefiter.constant.MessageConstant;
import com.onefiter.entity.PageResult;
import com.onefiter.entity.QueryPageBean;
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

    @RequestMapping("/findPage")
    public PageResult findPage(@RequestBody QueryPageBean queryPageBean){
        PageResult pageResult = travelItemService.findPage(
                queryPageBean.getCurrentPage(),
                queryPageBean.getPageSize(),
                queryPageBean.getQueryString());
        return pageResult;

    }

    @RequestMapping("/delete")
    public Result delete(Integer id){
        try {
            travelItemService.deleteById(id);
            return new Result(true,MessageConstant.DELETE_TRAVELITEM_SUCCESS);
        }catch (RuntimeException e){
            // 运行时异常，表示自由行和跟团游的关联表中存在数据
            return new Result(false,e.getMessage());
        }catch (Exception e) {
            e.printStackTrace();
            return new Result(false,MessageConstant.DELETE_TRAVELITEM_FAIL);
        }
    }

    @RequestMapping("/findById")
    public Result findById(Integer id){
        TravelItem travelItem =  travelItemService.findById(id);
        return new Result(true,MessageConstant.DELETE_TRAVELITEM_SUCCESS,travelItem);
    }

    @RequestMapping("/edit")
    public Result edit(@RequestBody TravelItem travelItem){
        travelItemService.edit(travelItem);
        return new Result(true,MessageConstant.EDIT_TRAVELITEM_SUCCESS);
    }
}
