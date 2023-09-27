package com.ksr.webapp.controllers;

import com.ksr.webapp.dto.UserProfileDTO;
import com.ksr.webapp.entity.User;
import com.ksr.webapp.entity.UserProfile;
import com.ksr.webapp.services.UserService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.core.Context;
import jakarta.ws.rs.core.Response;
import org.glassfish.jersey.server.mvc.Viewable;

import java.io.IOException;

@Path("/profile")
public class ProfileController {

    @GET
    public Viewable profile(@Context HttpServletRequest request, @Context HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession(false);
        User user = (User) session.getAttribute("user");

        if (user != null) {
            UserService userService = new UserService();
            UserProfile profile = userService.getByUserId(user.getId());

            request.setAttribute("profile", profile);

            return new Viewable("/frontend/profile");
        } else {
            String contextPath = request.getContextPath();
            response.sendRedirect(contextPath + "/auth/signin");
            return null;
        }

    }

    @GET
    @Path("/cart")
    public Viewable cart(@Context HttpServletRequest request, @Context HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession(false);
        String contextPath = request.getContextPath();

        if (session == null) {
            response.sendRedirect(contextPath + "/auth/signin");
            return null;
        } else {
            User user = (User) session.getAttribute("user");

            if (user != null) {
                return new Viewable("/frontend/cart");
            } else {
                response.sendRedirect(contextPath + "/auth/signin");
                return null;
            }
        }

    }

    @GET
    @Path("/meal-history")
    public Viewable mealHistory(@Context HttpServletRequest request, @Context HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession(false);
        String contextPath = request.getContextPath();

        if (session == null) {
            response.sendRedirect(contextPath + "/auth/signin");
            return null;
        } else {
            User user = (User) session.getAttribute("user");

            if (user != null) {
                return new Viewable("/frontend/meal_history");
            } else {
                response.sendRedirect(contextPath + "/auth/signin");
                return null;
            }
        }
    }

    @POST
    @Path("/update")
    public Response update(UserProfileDTO userProfileDTO) {
        UserService userService = new UserService();
        boolean update = userService.update(userProfileDTO);

        if (update) {
            return Response.ok().entity("success").build();
        }

        return Response.status(Response.Status.BAD_REQUEST).entity("fail").build();
    }

}
