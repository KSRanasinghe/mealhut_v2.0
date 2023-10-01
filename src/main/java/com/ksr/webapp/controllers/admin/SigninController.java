package com.ksr.webapp.controllers.admin;

import com.ksr.webapp.dto.AdminDTO;
import com.ksr.webapp.entity.Admin;
import com.ksr.webapp.mail.AdminSigninVerification;
import com.ksr.webapp.provider.MailServiceProvider;
import com.ksr.webapp.services.AdminService;
import com.ksr.webapp.util.OTPGenerator;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.core.Context;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;

import java.io.IOException;

@Path("/admin")
public class SigninController {

    @POST
    @Path("/signin")
    @Consumes(MediaType.APPLICATION_JSON)
    public Response signin(AdminDTO adminDTO) {
        AdminService adminService = new AdminService();
        Admin admin = adminService.signin(adminDTO);

        if (admin != null) {

            if (admin.isStatus()) {
                String email = admin.getEmail();
                String otp = OTPGenerator.generate();

                boolean updateOtp = adminService.updateOtp(email, otp);

                if (updateOtp) {
//                AdminSigninVerification mail = new AdminSigninVerification(email, otp);
//                MailServiceProvider.getInstance().sendMail(mail);

                    return Response.ok().entity("success").build();
                }
            } else {
                return Response.status(Response.Status.BAD_REQUEST).entity("inactive").build();
            }
        }
        return Response.status(Response.Status.BAD_REQUEST).entity("fail").build();
    }

    @POST
    @Path("/signin/verify")
    @Consumes(MediaType.APPLICATION_JSON)
    public Response confirmOtp(AdminDTO adminDTO, @Context HttpServletRequest request) {
        AdminService adminService = new AdminService();
        Admin admin = adminService.confirmOtp(adminDTO);

        if (admin != null) {
            HttpSession session = request.getSession();
            session.setAttribute("admin", admin);

            return Response.ok().entity("success").build();
        } else {
            return Response.status(Response.Status.BAD_REQUEST).entity("fail").build();
        }
    }
}
