package com.ksr.webapp.controllers;

import com.ksr.webapp.entity.User;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.core.Context;
import org.glassfish.jersey.server.mvc.Viewable;

import java.io.IOException;

@Path("/")
public class AuthController {

    @GET
    @Path("/auth/signin")
    public Viewable signIn(@Context HttpServletRequest request, @Context HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession(false);

        if (session == null) {
            return new Viewable("/frontend/auth/signin");
        } else {
            String contextPath = request.getContextPath();
            User user = (User) session.getAttribute("user");
            if (user != null) {
                response.sendRedirect(contextPath);
                return null;
            } else {
                return new Viewable("/frontend/auth/signin");
            }
        }
    }

    @GET
    @Path("/auth/signup")
    public Viewable signUp(@Context HttpServletRequest request, @Context HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession(false);

        if (session == null) {
            return new Viewable("/frontend/auth/signup");
        } else {
            User user = (User) session.getAttribute("user");
            if (user != null) {
                String contextPath = request.getContextPath();
                response.sendRedirect(contextPath);
                return null;
            } else {
                return new Viewable("/frontend/auth/signup");
            }
        }
    }

    @GET
    @Path("/auth/reset-password")
    public Viewable resetPassword(@Context HttpServletRequest request, @Context HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession(false);

        if (session == null) {
            return new Viewable("/frontend/auth/reset_password");
        } else {
            User user = (User) session.getAttribute("user");
            if (user != null) {
                String contextPath = request.getContextPath();
                response.sendRedirect(contextPath);
                return null;
            } else {
                return new Viewable("/frontend/auth/reset_password");
            }
        }
    }

    @GET
    @Path("/order/disposition")
    public Viewable disposition(@Context HttpServletRequest request, @Context HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession(false);
        String contextPath = request.getContextPath();

        if (session == null) {
            response.sendRedirect(contextPath + "/auth/signin");
            return null;
        } else {
            User user = (User) session.getAttribute("user");
            if (user != null) {
                return new Viewable("/frontend/order_disposition");
            } else {
                response.sendRedirect(contextPath + "/auth/signin");
                return null;
            }
        }
    }
}
