package com.ksr.webapp.controllers;

import com.ksr.webapp.dto.AuthDTO;
import com.ksr.webapp.entity.User;
import com.ksr.webapp.services.UserService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.core.Context;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;

@Path("/signin")
public class SigninController {

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response signin(AuthDTO authDTO, @Context HttpServletRequest request) {

        UserService userService = new UserService();

        User user = userService.signin(authDTO);

        if (user != null) {
            request.getSession().setAttribute("user", user);
            return Response.ok().entity("success").build();
        } else {
            return Response.status(Response.Status.BAD_REQUEST).entity("fail").build();
        }

    }
}
