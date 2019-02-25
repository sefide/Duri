package com.kh.duri.common.handler;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

@Repository
public class WebSocketHandler extends TextWebSocketHandler {

	@Autowired
	SqlSession sqlsession;

	private final Logger logger = LogManager.getLogger(getClass());

	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		

	}



  @Override

	public void afterConnectionEstablished(WebSocketSession session) throws Exception {

		

	}



 @Override

	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {

		/*NoteDao dao = sqlsession.getMapper(NoteDao.class);

		this.logger.info(message.getPayload());

		session.sendMessage(new TextMessage(dao.count_receive_note(message.getPayload()))); 
*/

		

	}





}



