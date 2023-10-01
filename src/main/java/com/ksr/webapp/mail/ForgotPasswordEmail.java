package com.ksr.webapp.mail;

import com.ksr.webapp.util.Env;
import io.rocketbase.mail.model.HtmlTextEmail;
import jakarta.mail.Message;
import jakarta.mail.MessagingException;
import jakarta.mail.internet.InternetAddress;

public class ForgotPasswordEmail extends Mailable {
    private String to;
    private String name;
    private String otp;

    public ForgotPasswordEmail(String to, String name, String otp) {
        this.to = to;
        this.name = name;
        this.otp = otp;
    }

    @Override
    public void build(Message message) throws MessagingException {
        message.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
        message.setSubject("Password Reset - MealHut My Account");

        HtmlTextEmail content = getEmailTemplateBuilder()
                .header()
                .logo("").logoHeight(41)
                .and()
                .text("Welcome, " + name).h1().center().and()
                .text("Your MealHut password reset code is,").center().and()
                .text(otp).h3().bold().center().and()
                .text("If you do not want to change your password or did not request this, please ignore this message.").italic().center().and()
                .text("Thank You!").center().and()
                .copyright("MealHut Sri Lanka").url("http://localhost:8080/mealhut").suffix(". All rights reserved.")
                .build();

        message.setContent(content.getHtml(), "text/html");
    }
}
