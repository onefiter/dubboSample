package com.onefiter.service;

import com.onefiter.entity.PageResult;
import com.onefiter.pojo.Setmeal;

public interface SetmealService {
    public void add(Setmeal setmeal, Integer[] travelgroupIds);
    //分页查询
    PageResult findPage(Integer currentPage, Integer pageSize, String queryString);
}
