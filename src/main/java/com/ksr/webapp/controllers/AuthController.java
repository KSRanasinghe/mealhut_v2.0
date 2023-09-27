package com.ksr.webapp.controllers;

import com.ksr.webapp.entity.User;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.core.Context;
import org.glassfish.jersey.server.mvc.Viewable;

@Path("/")
public class AuthController {

    @GET
    @Path("/auth/signin")
    public Viewable signIn(@Context HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session != null) {
            User user = (User) session.getAttribute("user");

            if (user != null) {
                return new IndexController().index();
            } else {
                return new Viewable("/frontend/auth/signin");
            }
        } else {
            return new Viewable("/frontend/auth/signin");
        }
    }

    @GET
    @Path("/auth/signup")
    public Viewable signUp(@Context HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session != null) {
            User user = (User) session.getAttribute("user");

            if (user != null) {
                return new IndexController().index();
            } else {
                return new Viewable("/frontend/auth/signup");
            }
        } else {
            return new Viewable("/frontend/auth/signup");
        }
    }

    @GET
    @Path("/auth/reset-password")
    public Viewable resetPassword(@Context HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session != null) {
            User user = (User) session.getAttribute("user");

            if (user != null) {
                return new IndexController().index();
            } else {
                return new Viewable("/frontend/auth/reset_password");
            }
        } else {
            return new Viewable("/frontend/auth/reset_password");
        }
    }

    @GET
    @Path("/order/disposition")
    public Viewable disposition() {
        return new Viewable("/frontend/order_disposition");
    }
}
