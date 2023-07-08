package com.onefiter.service;

import com.alibaba.dubbo.config.annotation.Service;
import com.onefiter.dao.TravelItemDao;
import com.onefiter.pojo.TravelItem;
import com.onefiter.service.TravelItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

/**
 * author: onefiter
 * date: 2023/7/7
 */
@Service(interfaceClass = TravelItemService.class)
@Transactional
public class TravelItemServiceImpl implements TravelItemService {

    @Autowired
    private TravelItemDao travelItemDao;
    @Override
    public void add(TravelItem travelItem) {
        travelItemDao.add(travelItem);

    }
}
