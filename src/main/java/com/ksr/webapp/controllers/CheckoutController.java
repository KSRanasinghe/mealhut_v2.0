package com.ksr.webapp.controllers;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import org.glassfish.jersey.server.mvc.Viewable;

@Path("/checkout")
public class CheckoutController {

    @GET
    @Path("/confirmation")
    public Viewable checkoutConfirmation(){
        return new Viewable("/frontend/checkout_details");
    }

    @GET
    public Viewable checkout(){
        return new Viewable("/frontend/checkout");
    }

}
