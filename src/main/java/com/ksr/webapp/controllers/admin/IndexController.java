package com.ksr.webapp.controllers.admin;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import org.glassfish.jersey.server.mvc.Viewable;

@Path("/admin")
public class IndexController {
    @GET
    public Viewable index(){
        return new Viewable("/backend/index");
    }

    @GET
    @Path("/dashboard")
    public Viewable dashboard(){
        return new Viewable("/backend/dashboard");
    }

    @GET
    @Path("/categories")
    public Viewable category(){
        return new Viewable("/backend/categories");
    }

    @GET
    @Path("/customers")
    public Viewable customer(){
        return new Viewable("/backend/customers");
    }

    @GET
    @Path("/feedbacks")
    public Viewable feedback(){
        return new Viewable("/backend/feedbacks");
    }

    @GET
    @Path("/items")
    public Viewable item(){
        return new Viewable("/backend/items");
    }

    @GET
    @Path("/orders")
    public Viewable order(){
        return new Viewable("/backend/orders");
    }

    @GET
    @Path("/administration")
    public Viewable administration(){
        return new Viewable("/backend/administration");
    }
}
