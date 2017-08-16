package cn.com.dao;

import cn.com.pojo.PushInfo;

public interface PushInfoMapper {
    int deleteByPrimaryKey(Integer pushiid);

    int insert(PushInfo record);

    int insertSelective(PushInfo record);

    PushInfo selectByPrimaryKey(Integer pushiid);

    int updateByPrimaryKeySelective(PushInfo record);

    int updateByPrimaryKey(PushInfo record);
}