package com.ksr.webapp.mail;

import io.rocketbase.mail.model.HtmlTextEmail;
import jakarta.mail.Message;
import jakarta.mail.MessagingException;
import jakarta.mail.internet.InternetAddress;

public class AdminSigninVerification extends Mailable{

    private String to;
    private String otp;

    public AdminSigninVerification(String to, String otp) {
        this.to = to;
        this.otp = otp;
    }

    @Override
    public void build(Message message) throws MessagingException {
        message.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
        message.setSubject("MealHut Admin Panel OTP Request");

        HtmlTextEmail content = getEmailTemplateBuilder()
                .header()
                .logo("").logoHeight(41)
                .and()
                .text("One-Time Password (OTP) Request").h1().center().and()
                .text("Dear MealHut Admin,").and()
                .text("You've requested a One-Time Password (OTP) to access the MealHut Admin Panel. Please use the following OTP to securely log in,").center().and()
                .text(otp).fontSize("32").bold().center().and()
                .text("If you did not initiate this request, please contact our support team immediately.").italic().center().and()
                .text("Thank you for your continued dedication to MealHut. We're here to support your admin needs.").center().and()
                .copyright("MealHut Sri Lanka").url("http://localhost:8080/mealhut/admin").suffix(". All rights reserved.")
                .build();

        message.setContent(content.getHtml(), "text/html");
    }
}
