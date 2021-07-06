package com.gdj35.cdcp.util;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.apache.commons.lang.RandomStringUtils;

public class Mail {
	public static void sendMail(String email, String type, String sendTxt) {
		String host = "smtp.naver.com";
		int port=465; //1. 네이버 STMP 포트 번호
		String user = "";	//2. 발신자 네이버 아이디(@이후는 쓰지 말 것)
		String password = "";		//3. 발신자 네이버 비밀번호
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
	        mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(email));//4. @이후도 포함
	        
	        String mailTitle = "";
	        String mailContent = "";
	        
	        if(type.equals("id")) {
	        	mailTitle = "[ 카드캡틴 아이디 찾기 ]";
	        	mailContent = "가입하실 때 입력하신 아이디는 " + sendTxt + "입니다.";
	        } else if (type.equals("pw")) {
	        	mailTitle = "[ 카드캡틴 비밀번호 찾기 ]";
	        	mailContent = "임시번호 입력칸에 " + sendTxt + "를 입력해 주세요.";
	        }
	        
	        mimeMessage.setSubject(mailTitle);	//5. 메일 제목
	        mimeMessage.setText(mailContent);	//6. 메일 내용
	        Transport.send(mimeMessage);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}