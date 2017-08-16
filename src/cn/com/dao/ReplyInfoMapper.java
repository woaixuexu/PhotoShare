package cn.com.dao;

import cn.com.pojo.ReplyInfo;

public interface ReplyInfoMapper {
    int deleteByPrimaryKey(Integer replyid);

    int insert(ReplyInfo record);

    int insertSelective(ReplyInfo record);

    ReplyInfo selectByPrimaryKey(Integer replyid);

    int updateByPrimaryKeySelective(ReplyInfo record);

    int updateByPrimaryKey(ReplyInfo record);
}