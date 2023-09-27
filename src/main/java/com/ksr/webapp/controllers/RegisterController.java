package com.ksr.webapp.controllers;

import com.ksr.webapp.dto.AuthDTO;
import com.ksr.webapp.entity.User;
import com.ksr.webapp.services.UserService;
import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;

@Path("/register")
public class RegisterController {

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response register(AuthDTO authDTO) {

        UserService userService = new UserService();
        User byEmail = userService.getByEmail(authDTO.getEmail());

        if (byEmail != null) {
            return Response.status(Response.Status.BAD_REQUEST).entity("exist").build();
        } else {
            boolean register = userService.register(authDTO);

            if (register) {
                return Response.ok().entity("success").build();
            } else {
                return Response.status(Response.Status.BAD_REQUEST).entity("fail").build();
            }
        }

    }
}
