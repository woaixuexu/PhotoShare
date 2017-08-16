package cn.com.dao;

import cn.com.pojo.AttentionInfo;

public interface AttentionInfoMapper {
    int deleteByPrimaryKey(Integer attendid);

    int insert(AttentionInfo record);

    int insertSelective(AttentionInfo record);

    AttentionInfo selectByPrimaryKey(Integer attendid);

    int updateByPrimaryKeySelective(AttentionInfo record);

    int updateByPrimaryKey(AttentionInfo record);
}