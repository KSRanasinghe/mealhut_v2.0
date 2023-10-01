package com.ksr.webapp.controllers.admin;

import com.ksr.webapp.dto.CategoryDTO;
import com.ksr.webapp.entity.Category;
import com.ksr.webapp.services.ProductService;
import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;

@Path("/admin/category")
public class CategoryController {

    @POST
    @Path("/save")
    @Consumes(MediaType.APPLICATION_JSON)
    public Response save(CategoryDTO categoryDTO) {
        ProductService productService = new ProductService();
        Category category = productService.getCategoryByName(categoryDTO);

        if (category == null) {
            boolean saveCategory = productService.saveCategory(categoryDTO);

            if (saveCategory) {
                return Response.ok().entity("success").build();
            }

            return Response.status(Response.Status.INTERNAL_SERVER_ERROR).entity("fail").build();
        }

        return Response.status(Response.Status.BAD_REQUEST).entity("exist").build();
    }
}
