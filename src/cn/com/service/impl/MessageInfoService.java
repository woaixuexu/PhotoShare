package cn.com.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.dao.MessageInfoMapper;
import cn.com.service.IMessageInfoService;


@Service
public class MessageInfoService implements IMessageInfoService {

	@Autowired
	private MessageInfoMapper messageInfoMapper;
	
	
	
}
