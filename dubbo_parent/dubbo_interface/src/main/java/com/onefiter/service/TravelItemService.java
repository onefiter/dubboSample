package com.onefiter.service;

import com.onefiter.entity.PageResult;
import com.onefiter.pojo.TravelItem;

/**
 * author: onefiter
 * date: 2023/7/7
 */
public interface TravelItemService {
    void add(TravelItem travelItem);

    PageResult findPage(Integer currentPage, Integer pageSize, String queryString);

    void deleteById(Integer id);

    TravelItem findById(Integer id);

    void edit(TravelItem travelItem);

}
