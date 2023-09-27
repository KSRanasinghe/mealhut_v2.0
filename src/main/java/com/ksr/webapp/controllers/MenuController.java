package com.ksr.webapp.controllers;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import org.glassfish.jersey.server.mvc.Viewable;

@Path("/menu")
public class MenuController {

    @GET
    public Viewable menu(){
        return new Viewable("/frontend/menu");
    }

    @GET
    @Path("/meal")
    public Viewable singleMeal(){
        return new Viewable("/frontend/meal");
    }
}
