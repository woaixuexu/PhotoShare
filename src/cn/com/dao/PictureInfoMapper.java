package cn.com.dao;

import cn.com.pojo.PictureInfo;

public interface PictureInfoMapper {
    int deleteByPrimaryKey(Integer picid);

    int insert(PictureInfo record);

    int insertSelective(PictureInfo record);

    PictureInfo selectByPrimaryKey(Integer picid);

    int updateByPrimaryKeySelective(PictureInfo record);

    int updateByPrimaryKey(PictureInfo record);
}