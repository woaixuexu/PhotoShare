package cn.com.dao;

import cn.com.pojo.CharInfo;

public interface CharInfoMapper {
    int deleteByPrimaryKey(Integer charid);

    int insert(CharInfo record);

    int insertSelective(CharInfo record);

    CharInfo selectByPrimaryKey(Integer charid);

    int updateByPrimaryKeySelective(CharInfo record);

    int updateByPrimaryKey(CharInfo record);
}