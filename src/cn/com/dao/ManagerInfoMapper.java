package cn.com.dao;

import cn.com.pojo.ManagerInfo;

public interface ManagerInfoMapper {
    int insert(ManagerInfo record);

    int insertSelective(ManagerInfo record);
}