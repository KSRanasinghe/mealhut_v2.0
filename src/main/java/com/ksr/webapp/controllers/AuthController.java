package com.ksr.webapp.controllers;

import com.ksr.webapp.dto.AuthDTO;
import com.ksr.webapp.dto.PasswordChangeDTO;
import com.ksr.webapp.entity.User;
import com.ksr.webapp.entity.UserProfile;
import com.ksr.webapp.mail.ConfirmPasswordReset;
import com.ksr.webapp.mail.ForgotPasswordEmail;
import com.ksr.webapp.provider.MailServiceProvider;
import com.ksr.webapp.services.UserService;
import com.ksr.webapp.util.OTPGenerator;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.core.Context;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
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

    @POST
    @Path("/auth/reset")
    @Consumes(MediaType.APPLICATION_JSON)
    public Response resetPassword(AuthDTO authDTO, @Context HttpServletRequest request) {
        UserService userService = new UserService();
        User user = userService.getUserByEmail(authDTO.getEmail());

        if (user != null) {
            UserProfile userProfile = userService.getUserProfileByUserId(user.getId());

            if (userProfile != null) {
                String to = authDTO.getEmail();
                String name = userProfile.getFirstName();
                String otp = OTPGenerator.generate();

                ForgotPasswordEmail mail = new ForgotPasswordEmail(to, name, otp);
                MailServiceProvider.getInstance().sendMail(mail);

                boolean updateOtp = userService.updateOtp(to, otp);

                if (updateOtp) {
                    request.getSession().setAttribute("forgot_user", user);
                    return Response.ok().entity("success").build();
                }
            }
        }

        return Response.status(Response.Status.BAD_REQUEST).entity("fail").build();
    }

    @POST
    @Path("/auth/reset/confirm-otp")
    @Consumes(MediaType.APPLICATION_JSON)
    public Response confirmOtp(PasswordChangeDTO passwordChangeDTO, @Context HttpServletRequest request) {
        User forgotUser = (User) request.getSession(false).getAttribute("forgot_user");
        if (forgotUser != null) {
            UserService userService = new UserService();
            boolean confirm = userService.confirmOtp(forgotUser.getEmail(), passwordChangeDTO.getOtp());
            if (confirm) {
                return Response.ok().entity("success").build();
            }
        }

        return Response.status(Response.Status.BAD_REQUEST).entity("fail").build();
    }

    @POST
    @Path("/auth/reset/password-change")
    @Consumes(MediaType.APPLICATION_JSON)
    public Response passwordChange(PasswordChangeDTO passwordChangeDTO, @Context HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session != null) {
            User forgotUser = (User) session.getAttribute("forgot_user");
            if (forgotUser != null) {
                UserService userService = new UserService();
                boolean reset = userService.resetPassword(forgotUser.getId(), passwordChangeDTO.getPasswordNew());
                if (reset) {
                    ConfirmPasswordReset mail = new ConfirmPasswordReset(forgotUser.getEmail());
                    MailServiceProvider.getInstance().sendMail(mail);
                    session.removeAttribute("forgot_user");
                    session.invalidate();
                    return Response.ok().entity("success").build();
                }
            }
        }
        return Response.status(Response.Status.BAD_REQUEST).entity("fail").build();
    }

    @GET
    @Path("/auth/sign-out")
    public void signOut(@Context HttpServletRequest request, @Context HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession(false);
        if (session != null) {
            User user = (User) session.getAttribute("user");
            if (user != null) {
                session.removeAttribute("user");
                session.invalidate();

                String contextPath = request.getContextPath();
                response.sendRedirect(contextPath + "/auth/signin");
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
