package com.ksr.webapp.controllers;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import org.glassfish.jersey.server.mvc.Viewable;

@Path("/")
public class IndexController {
    @GET
    public Viewable index(){
        return new Viewable("/frontend/index");
    }

    @GET
    @Path("/about-us")
    public Viewable aboutUs(){
        return new Viewable("/frontend/about_us");
    }

    @GET
    @Path("/contact-us")
    public Viewable contactUs(){
        return new Viewable("/frontend/contact_us");
    }

    @GET
    @Path("/cart")
    public Viewable cart(){
        return new Viewable("/frontend/cart");
    }

    @GET
    @Path("/terms")
    public Viewable terms(){
        return new Viewable("/frontend/terms");
    }

    @GET
    @Path("/privacy-policy")
    public Viewable privacyPolicy(){
        return new Viewable("/frontend/privacy");
    }
}
