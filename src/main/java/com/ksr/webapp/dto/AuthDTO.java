package com.ksr.webapp.dto;

public class AuthDTO {

    private String email;
    private String password;
    private boolean cookie;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isCookie() {
        return cookie;
    }

    public void setCookie(boolean cookie) {
        this.cookie = cookie;
    }
}
