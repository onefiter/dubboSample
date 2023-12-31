package com.onefiter.dao;

import com.github.pagehelper.Page;
import com.onefiter.pojo.Setmeal;

import java.util.Map;

public interface SetmealDao {
    void add(Setmeal setmeal);

    void setSetmealAndTravelGroup(Map<String, Integer> map);
    Page<Setmeal> findPage(String queryString);
}
