package com.ksr.webapp.controllers;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import org.glassfish.jersey.server.mvc.Viewable;

@Path("/profile")
public class ProfileController {

    @GET
    public Viewable profile(){
        return new Viewable("/frontend/profile");
    }

    @GET
    @Path("/meal-history")
    public Viewable mealHistory(){
        return new Viewable("/frontend/meal_history");
    }

}
