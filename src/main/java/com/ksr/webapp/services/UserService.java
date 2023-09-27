package com.ksr.webapp.services;

import com.ksr.webapp.dto.AuthDTO;
import com.ksr.webapp.dto.UserProfileDTO;
import com.ksr.webapp.entity.User;
import com.ksr.webapp.entity.UserProfile;
import com.ksr.webapp.util.Encryption;
import com.ksr.webapp.util.HibernateUtil;
import jakarta.persistence.NoResultException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.List;

public class UserService {

    public User getByEmail(String email) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            return session.createQuery("SELECT u FROM User u WHERE u.email = :email", User.class).setParameter("email", email).uniqueResult();
        } catch (NoResultException e) {
            return null;
        }
    }

    public boolean register(AuthDTO authDTO) {

        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;

        try {
            transaction = session.beginTransaction();

            User user = new User();
            user.setEmail(authDTO.getEmail());
            user.setPassword(Encryption.encryption(authDTO.getPassword()));

            session.persist(user);

            transaction.commit();

            return true;
        } catch (HibernateException e) {
            if (transaction != null) {
                transaction.rollback();
            }

            e.printStackTrace();

            return false;
        } finally {
            session.close();
        }
    }

    public User signin(AuthDTO authDTO) {
        Session session = HibernateUtil.getSessionFactory().openSession();

        try {
            Query<User> query = session.createQuery("FROM User u WHERE u.email = :email AND u.password = :password", User.class);
            query.setParameter("email", authDTO.getEmail());
            query.setParameter("password", Encryption.encryption(authDTO.getPassword()));
            User user = query.uniqueResult();

            if (user != null) {
                return user;
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

    public UserProfile getByUserId(Long id){
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            return session.createQuery("FROM UserProfile up WHERE up.userId = :id", UserProfile.class).setParameter("id", id).uniqueResult();
        } catch (NoResultException e) {
            return null;
        }
    }

    public boolean update(UserProfileDTO userProfileDTO) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;

        try {
            transaction = session.beginTransaction();

            UserProfile existUserProfile = session.createQuery("FROM UserProfile up WHERE up.userId = :uid", UserProfile.class)
                    .setParameter("uid", userProfileDTO.getUid()).uniqueResult();

            if (existUserProfile != null) {
                existUserProfile.setFirstName(userProfileDTO.getFirstName());
                existUserProfile.setLastName(userProfileDTO.getLastName());
                existUserProfile.setPhone(userProfileDTO.getPhone());

                session.update(existUserProfile);
            } else {
                UserProfile userProfile = new UserProfile();
                userProfile.setFirstName(userProfileDTO.getFirstName());
                userProfile.setLastName(userProfileDTO.getLastName());
                userProfile.setPhone(userProfileDTO.getPhone());
                userProfile.setUserId(userProfileDTO.getUid());

                session.persist(userProfile);
            }

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
