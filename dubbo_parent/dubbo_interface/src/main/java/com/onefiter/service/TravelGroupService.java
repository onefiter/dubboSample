package com.onefiter.service;

import com.onefiter.entity.PageResult;
import com.onefiter.pojo.TravelGroup;

import java.util.List;

public interface TravelGroupService {

    void add(TravelGroup travelGroup, Integer[] travelItemIds);
    PageResult findPage(Integer currentPage, Integer pageSize, String queryString);

    TravelGroup findById(Integer id);

    void edit(Integer[] travelItemIds, TravelGroup travelGroup);

    List<Integer> findTravelItemIdByTravelgroupId(Integer id);

}
