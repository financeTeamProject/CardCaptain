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
	public static String sendMail(String email, String type, String sendTxt) {
		String host = "smtp.naver.com";
		int port=465; //1. 네이버 STMP 포트 번호
		String user = "blackjuu";	//2. 발신자 네이버 아이디(@이후는 쓰지 말 것)
		String password = "zkemzoqxls123!";		//3. 발신자 네이버 비밀번호(비밀번호 :카드캡틴123!)
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
	        
	        if (type.equals("pw")) {
	        	mailTitle = "[ 카드캡틴 비밀번호 찾기 ]";
	        	mailContent = "비밀번호 찾기를 완료하시려면 인증코드 : " + sendTxt + "를 입력해 주세요.";
	        	sendTxt = "success";
	        } else if(type.equals("join")) {
	        	mailTitle = "[ 카드캡틴 회원가입 ]";
	        	mailContent = "회원가입을 축하합니다. 인증코드 : " + sendTxt + "를 입력해 주세요.";
	        	sendTxt = "success";
			}else {
	        	sendTxt = "failed";
	        }
	        
	        mimeMessage.setSubject(mailTitle);	//5. 메일 제목
	        mimeMessage.setText(mailContent);	//6. 메일 내용
	        Transport.send(mimeMessage);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return sendTxt;
	}
}