package com.gdj35.cdcp.util;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Mail {
	public static void sendMail() {
		String host = "smtp.naver.com";
		int port=465; //1. 네이버 STMP 포트 번호
		String user = "발신자 네이버 아이디";	//2. 발신자 네이버 아이디(@이후는 쓰지 말 것)
		String password = "발신자 네이버 비밀번호";		//3. 발신자 네이버 비밀번호
		Properties props = System.getProperties();
		
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.port", port);
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.ssl.enable", "true");
        props.put("mail.smtp.ssl.trust", host);
        
		try {
			Session session = Session.getDefaultInstance(props, new Authenticator() {
	            protected PasswordAuthentication getPasswordAuthentication() {
	                return new PasswordAuthentication(user, password);
	            }
	        });
	        session.setDebug(false); 
	        
	        Message mimeMessage = new MimeMessage(session); 
	        mimeMessage.setFrom(new InternetAddress(user + "@naver.com")); 
	        mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress("수신자 이메일 주소"));//4. @이후도 포함
	        mimeMessage.setSubject("메일제목");	//5. 메일 제목
	        mimeMessage.setText("메일내용");	//6. 메일 내용
	        Transport.send(mimeMessage);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}