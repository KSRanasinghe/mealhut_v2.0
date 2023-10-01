package com.ksr.webapp.services;

import com.ksr.webapp.dto.AdminDTO;
import com.ksr.webapp.entity.Admin;
import com.ksr.webapp.entity.AdminType;
import com.ksr.webapp.util.Encryption;
import com.ksr.webapp.util.HibernateUtil;
import jakarta.persistence.NoResultException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.List;

public class AdminService {

    public Admin getAdminByEmail(String email) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            return session.createQuery("FROM Admin a WHERE a.email = :email", Admin.class).setParameter("email", email).uniqueResult();
        } catch (NoResultException e) {
            return null;
        }
    }

    public List<Admin> loadAllAdmin(Long id) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            return session.createQuery("FROM Admin a WHERE a.id <> :id ORDER BY a.id DESC", Admin.class)
                    .setParameter("id", id).getResultList();
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
            admin.setPassword(Encryption.encryption(adminDTO.getPassword()));

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

    public Admin signin(AdminDTO adminDTO) {
        Session session = HibernateUtil.getSessionFactory().openSession();

        try {
            Query<Admin> query = session.createQuery("FROM Admin a WHERE a.email = :email AND a.password = :password", Admin.class);
            query.setParameter("email", adminDTO.getEmail());
            query.setParameter("password", Encryption.encryption(adminDTO.getPassword()));
            Admin admin = query.uniqueResult();

            if (admin != null) {
                return admin;
            } else {
                return null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            session.close();
        }
    }

    public boolean updateOtp(String email, String otp) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;

        try {
            transaction = session.beginTransaction();

            Admin adminByEmail = getAdminByEmail(email);
            adminByEmail.setOtp(otp);

            session.update(adminByEmail);
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

    public Admin confirmOtp(AdminDTO adminDTO) {
        Session session = HibernateUtil.getSessionFactory().openSession();

        try {
            Query<Admin> query = session.createQuery("FROM Admin a WHERE a.email = :email AND a.otp = :otp", Admin.class);
            query.setParameter("email", adminDTO.getEmail());
            query.setParameter("otp", adminDTO.getOtp());
            Admin admin = query.uniqueResult();

            if (admin != null) {
                return admin;
            } else {
                return null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            session.close();
        }
    }

    public boolean changeStatus(AdminDTO adminDTO) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;

        try {
            transaction = session.beginTransaction();

            Admin adminByEmail = getAdminByEmail(adminDTO.getEmail());

            if (adminByEmail.isStatus()) {
                adminByEmail.setStatus(false);
            } else {
                adminByEmail.setStatus(true);
            }

            session.update(adminByEmail);
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
}
