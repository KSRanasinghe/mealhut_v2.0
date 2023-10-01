package com.ksr.webapp.services;

import com.ksr.webapp.dto.CategoryDTO;
import com.ksr.webapp.entity.Category;
import com.ksr.webapp.util.HibernateUtil;
import jakarta.persistence.NoResultException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class ProductService {

    public Category getCategoryByName(CategoryDTO categoryDTO) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            return session.createQuery("FROM Category c WHERE c.categoryName = : name", Category.class)
                    .setParameter("name", categoryDTO.getName()).uniqueResult();
        } catch (NoResultException e) {
            return null;
        }
    }

    public boolean saveCategory(CategoryDTO categoryDTO) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;

        try {
            transaction = session.beginTransaction();

            Category category = new Category();
            category.setCategoryName(categoryDTO.getName());

            session.persist(category);

            transaction.commit();
            return true;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
            return false;
        } finally {
            session.close();
        }
    }

    public List<Category> loadAllCategory(){
        try{
            Session session = HibernateUtil.getSessionFactory().openSession();
            return session.createQuery("FROM Category c ORDER BY c.id DESC ", Category.class).getResultList();
        } catch (NoResultException e){
            return null;
        }
    }

}
