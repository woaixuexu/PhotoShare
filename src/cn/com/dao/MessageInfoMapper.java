package cn.com.dao;

import cn.com.pojo.MessageInfo;

public interface MessageInfoMapper {
    int deleteByPrimaryKey(Integer messageid);

    int insert(MessageInfo record);

    int insertSelective(MessageInfo record);

    MessageInfo selectByPrimaryKey(Integer messageid);

    int updateByPrimaryKeySelective(MessageInfo record);

    int updateByPrimaryKey(MessageInfo record);
}