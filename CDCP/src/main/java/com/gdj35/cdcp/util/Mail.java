package com.gdj35.cdcp.util;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Mail {

	public static void sendMail() {
		Properties props = new Properties();

		try {
			// SSL 사용일때
			props.put("mail.smtp.host", "smtp.naver.com");
			props.put("mail.smtp.socketFactory.port", "465");
			props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.port", "465");
			
			// TLS 사용일때
			//props.put("mail.smtp.port", "465");
			//props.put("mail.smtp.starttls.enable", "true");
			//props.put("mail.smtp.host", "smtp.naver.com");
			//props.put("mail.smtp.socketFactory.fallback", "false");
			//props.put("mail.smtp.debug", "true");
			//props.put("mail.smtp.auth", "true");
			
			// 인증정보
			Authenticator auth = new SMTPAuthenticator("lalala0296", "apples1289");
			Session mailSession = Session.getDefaultInstance(props, auth);

			Message message = new MimeMessage(mailSession);
			message.setFrom(new InternetAddress("syou0296@naver.com"));
			message.setSubject("테스트123");
			message.setText("테스트asdf");

			message.addRecipient(Message.RecipientType.TO, new InternetAddress("syou0296@naver.com"));

			Transport.send(message);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}

}