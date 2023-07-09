package com.onefiter.dao;

import com.github.pagehelper.Page;
import com.onefiter.pojo.TravelGroup;
import com.onefiter.pojo.TravelItem;

import java.util.List;
import java.util.Map;

public interface TravelGroupDao {
    void add(TravelGroup travelGroup);

    void setTravelGroupAndTravelItem(Map<String, Integer> map);
    Page<TravelGroup> findPage(String queryString);

    TravelGroup findById(Integer id);



    List<Integer> findTravelItemIdByTravelgroupId(Integer id);

    void deleteTravelGroupAndTravelItemByTravelGroupId(Integer id);

    void edit(TravelGroup travelGroup);

    List<TravelGroup> findAll();

}
