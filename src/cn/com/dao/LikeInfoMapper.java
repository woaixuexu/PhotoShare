package cn.com.dao;

import cn.com.pojo.LikeInfo;

public interface LikeInfoMapper {
    int deleteByPrimaryKey(Integer likeid);

    int insert(LikeInfo record);

    int insertSelective(LikeInfo record);

    LikeInfo selectByPrimaryKey(Integer likeid);

    int updateByPrimaryKeySelective(LikeInfo record);

    int updateByPrimaryKey(LikeInfo record);
}