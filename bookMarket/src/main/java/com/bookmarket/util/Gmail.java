package com.bookmarket.util;


import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class Gmail extends Authenticator{
	
	protected PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication("����ھ��̵�", "����ں��"); //����ڿ��� ���� ������ �ڽ��� ���̵� ��й�ȣ 
	}
}