package com.onefiter.dao;

import com.github.pagehelper.Page;
import com.onefiter.pojo.TravelItem;

/**
 * author: onefiter
 * date: 2023/7/7
 */
public interface TravelItemDao {
    void add(TravelItem travelItem);

    Page<TravelItem> findPage(String queryString);

    void deleteById(Integer id);

    long findCountByTravelItemItemId(Integer id);

    TravelItem findById(Integer id);

    void edit(TravelItem travelItem);
}
