package Mail;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendMail {
	
	public boolean sendMail(String to, String oldpassword) {

		final String from = "itownshipofficial@gmail.com";
		final String password = "itownship@official";

		String host = "smtp.gmail.com";

		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", "587");

		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(from, password);
			}
		});

		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(from));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
			message.setSubject("Forgot Password | I-Township");

			message.setText("Your Old Password is : "+oldpassword+"  "
					+ " From : I-Township");
		

			Transport.send(message);

			System.out.println("Sent message successfully....");

		} catch (Exception e) {
			
			e.printStackTrace();
			return false;
		}
		return true;
	}

}
