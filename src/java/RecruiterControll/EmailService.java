/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package RecruiterControll;

/**
 *
 * @author Admin
 */
import javax.mail.*;
import javax.mail.internet.*;
import java.util.Properties;

public class EmailService {

    public boolean sendEmail(String emailReceive, String title, String message) {
        final String from = "mixikhuong29@gmail.com";
        final String password2 = "mnxgfciemlossqgh"; // Consider storing this securely
        final String to = emailReceive;

        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        Authenticator auth = new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(from, password2);
            }
        };

        Session session = Session.getInstance(props, auth);
        MimeMessage msg = new MimeMessage(session);

        final boolean[] isSent = {false};

        Thread emailThread = new Thread(() -> {
            try {
                msg.setHeader("Content-type", "text/HTML; charset=UTF-8");
                msg.setFrom(new InternetAddress(from));
                msg.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
                msg.setSubject(title, "UTF-8");
                msg.setContent(message, "text/HTML; charset=UTF-8");
                Transport.send(msg);
                isSent[0] = true;
            } catch (MessagingException e) {
            }
        });

        emailThread.start();
        try {
            emailThread.join(); 
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        return isSent[0];
    }

    
    
    
    

    public static void main(String[] args) {
        EmailService emailService = new EmailService();
        boolean isSent = emailService.sendEmail("haotom03@gmail.com", "Test Subject", "Test Content");

        if (isSent) {
            System.out.println("Email sent successfully.");
        } else {
            System.out.println("Failed to send email.");
        }
    }

}
