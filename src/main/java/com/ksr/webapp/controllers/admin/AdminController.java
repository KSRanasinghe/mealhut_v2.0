package com.ksr.webapp.controllers.admin;

import com.ksr.webapp.dto.AdminDTO;
import com.ksr.webapp.entity.Admin;
import com.ksr.webapp.services.AdminService;
import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;

@Path("/admin")
public class AdminController {

    @POST
    @Path("/administration/save")
    @Consumes(MediaType.APPLICATION_JSON)
    public Response saveAdmin(AdminDTO adminDTO) {
        AdminService adminService = new AdminService();
        Admin adminByEmail = adminService.getAdminByEmail(adminDTO.getEmail());

        if (adminByEmail != null) {
            return Response.status(Response.Status.BAD_REQUEST).entity("exist").build();
        } else {
            boolean saveAdmin = adminService.saveAdmin(adminDTO);

            if (saveAdmin) {
                return Response.ok().entity("success").build();
            }
            return Response.status(Response.Status.BAD_REQUEST).entity("fail").build();
        }
    }
}
