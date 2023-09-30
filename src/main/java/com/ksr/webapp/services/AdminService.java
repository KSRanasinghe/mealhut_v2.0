package com.ksr.webapp.services;

import com.ksr.webapp.dto.AdminDTO;
import com.ksr.webapp.entity.Admin;
import com.ksr.webapp.entity.User;
import com.ksr.webapp.util.HibernateUtil;
import jakarta.persistence.NoResultException;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class AdminService {

    public Admin getAdminByEmail(String email) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            return session.createQuery("FROM Admin a WHERE a.email = :email", Admin.class).setParameter("email", email).uniqueResult();
        } catch (NoResultException e) {
            return null;
        }
    }

    public boolean saveAdmin(AdminDTO adminDTO) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;

        try {
            transaction = session.beginTransaction();

            Admin admin = new Admin();
            admin.setFirstName(adminDTO.getFirstName());
            admin.setLastName(adminDTO.getLastName());
            admin.setAdminType(adminDTO.getAdminType());
            admin.setEmail(adminDTO.getEmail());
            admin.setPassword(adminDTO.getPassword());

            session.persist(admin);
            transaction.commit();

            return true;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            return false;
        } finally {
            session.close();
        }
    }
}
