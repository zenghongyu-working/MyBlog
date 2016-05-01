package com.zhy.service;

import com.zhy.dao.MessageBoardDao;
import com.zhy.model.MessageBoard;

public class MessageBoardServiceImpl implements MessageBoardService {

	private MessageBoardDao messageBoardDao;
	
	public MessageBoardDao getMessageBoardDao() {
		return messageBoardDao;
	}

	public void setMessageBoardDao(MessageBoardDao messageBoardDao) {
		this.messageBoardDao = messageBoardDao;
	}

	@Override
	public void add(MessageBoard messageBoard) {
		messageBoardDao.add(messageBoard);
	}

}
