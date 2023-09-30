package com.ksr.webapp.mail;

import io.rocketbase.mail.model.HtmlTextEmail;
import jakarta.mail.Message;
import jakarta.mail.MessagingException;
import jakarta.mail.internet.InternetAddress;

public class ConfirmPasswordReset extends Mailable {

    private String to;

    public ConfirmPasswordReset(String to) {
        this.to = to;
    }

    @Override
    public void build(Message message) throws MessagingException {
        message.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
        message.setSubject("Password Reset Confirmation for Your MealHut Account");

        HtmlTextEmail content = getEmailTemplateBuilder()
                .header()
                .logo("").logoHeight(41)
                .and()
                .text("Password Successfully Reset").h1().center().and()
                .text("Your MealHut account password has been successfully reset. " +
                        "If you have any questions or encounter any issues while ordering your favorite meals, " +
                        "please don't hesitate to contact our support team.").center().and()
                .text("We appreciate your continued patronage of MealHut.").center().and()
                .text("Thank you for choosing us for your online meal orders.").italic().center().and()
                .copyright("MealHut Sri Lanka").url("http://localhost:8080/mealhut").suffix(". All rights reserved.")
                .build();

        message.setContent(content.getHtml(), "text/html");
    }
}
