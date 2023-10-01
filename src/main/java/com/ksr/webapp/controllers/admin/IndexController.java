package com.ksr.webapp.controllers.admin;

import com.ksr.webapp.entity.Admin;
import com.ksr.webapp.entity.Category;
import com.ksr.webapp.entity.User;
import com.ksr.webapp.services.AdminService;
import com.ksr.webapp.services.ProductService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.core.Context;
import org.glassfish.jersey.server.mvc.Viewable;

import java.io.IOException;
import java.util.List;

@Path("/admin")
public class IndexController {
    @GET
    public Viewable index(@Context HttpServletRequest request, @Context HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession(false);
        String contextPath = request.getContextPath();

        if (session == null) {
            return new Viewable("/backend/index");
        } else {
            Admin admin = (Admin) session.getAttribute("admin");

            if (admin == null) {
                return new Viewable("/backend/index");
            } else {
                response.sendRedirect(contextPath + "/admin/dashboard");
                return null;
            }
        }
    }

    @GET
    @Path("/dashboard")
    public Viewable dashboard(@Context HttpServletRequest request, @Context HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession(false);
        String contextPath = request.getContextPath();

        if (session == null) {
            response.sendRedirect(contextPath + "/admin");
            return null;
        } else {
            Admin admin = (Admin) session.getAttribute("admin");

            if (admin != null) {
                return new Viewable("/backend/dashboard");
            } else {
                response.sendRedirect(contextPath + "/admin");
                return null;
            }
        }
    }

    @GET
    @Path("/categories")
    public Viewable category(@Context HttpServletRequest request, @Context HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession(false);
        String contextPath = request.getContextPath();

        if (session == null) {
            response.sendRedirect(contextPath + "/admin");
            return null;
        } else {
            Admin admin = (Admin) session.getAttribute("admin");

            if (admin != null) {
                ProductService productService = new ProductService();
                List<Category> categories = productService.loadAllCategory();

                if (categories != null){
                    request.setAttribute("categories", categories);
                }
                return new Viewable("/backend/categories");
            } else {
                response.sendRedirect(contextPath + "/admin");
                return null;
            }
        }
    }

    @GET
    @Path("/customers")
    public Viewable customer(@Context HttpServletRequest request, @Context HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession(false);
        String contextPath = request.getContextPath();

        if (session == null) {
            response.sendRedirect(contextPath + "/admin");
            return null;
        } else {
            Admin admin = (Admin) session.getAttribute("admin");

            if (admin != null) {
                return new Viewable("/backend/customers");
            } else {
                response.sendRedirect(contextPath + "/admin");
                return null;
            }
        }

    }

    @GET
    @Path("/feedbacks")
    public Viewable feedback(@Context HttpServletRequest request, @Context HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession(false);
        String contextPath = request.getContextPath();

        if (session == null) {
            response.sendRedirect(contextPath + "/admin");
            return null;
        } else {
            Admin admin = (Admin) session.getAttribute("admin");

            if (admin != null) {
                return new Viewable("/backend/feedbacks");
            } else {
                response.sendRedirect(contextPath + "/admin");
                return null;
            }
        }
    }

    @GET
    @Path("/items")
    public Viewable item(@Context HttpServletRequest request, @Context HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession(false);
        String contextPath = request.getContextPath();

        if (session == null) {
            response.sendRedirect(contextPath + "/admin");
            return null;
        } else {
            Admin admin = (Admin) session.getAttribute("admin");

            if (admin != null) {
                return new Viewable("/backend/items");
            } else {
                response.sendRedirect(contextPath + "/admin");
                return null;
            }
        }
    }

    @GET
    @Path("/orders")
    public Viewable order(@Context HttpServletRequest request, @Context HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession(false);
        String contextPath = request.getContextPath();

        if (session == null) {
            response.sendRedirect(contextPath + "/admin");
            return null;
        } else {
            Admin admin = (Admin) session.getAttribute("admin");

            if (admin != null) {
                return new Viewable("/backend/orders");
            } else {
                response.sendRedirect(contextPath + "/admin");
                return null;
            }
        }
    }

    @GET
    @Path("/administration")
    public Viewable administration(@Context HttpServletRequest request, @Context HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession(false);
        String contextPath = request.getContextPath();

        if (session == null) {
            response.sendRedirect(contextPath + "/admin");
            return null;
        } else {
            Admin admin = (Admin) session.getAttribute("admin");

            if (admin != null) {
                if (admin.getAdminType().toString().equals("ADMIN")) {
                    AdminService adminService = new AdminService();
                    List<Admin> admins = adminService.loadAllAdmin(admin.getId());
                    if (admins != null) {
                        request.setAttribute("admins", admins);
                    }
                    return new Viewable("/backend/administration");
                } else {
                    response.sendRedirect(contextPath + "/admin/dashboard");
                    return null;
                }
            }
            response.sendRedirect(contextPath + "/admin");
            return null;
        }
    }

    @GET
    @Path("/sign-out")
    public void signOut(@Context HttpServletRequest request, @Context HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession(false);
        if (session != null) {
            Admin admin = (Admin) session.getAttribute("admin");
            if (admin != null) {
                session.removeAttribute("admin");
                session.invalidate();

                String contextPath = request.getContextPath();
                response.sendRedirect(contextPath + "/admin");
            }
        }
    }
}
