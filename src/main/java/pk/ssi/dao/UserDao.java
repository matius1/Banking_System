package pk.ssi.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import pk.ssi.model.User;

@Repository
@Transactional
public class UserDao {

	public void create(User user) {
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("jcg-JPA");
            EntityManager em = emf.createEntityManager();
            em.getTransaction().begin();
            em.persist(user);
            em.getTransaction().commit();
	    return;
	  }
        
        public User getByLogin(String login, String haslo) {
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("jcg-JPA");
            EntityManager em = emf.createEntityManager();
            em.getTransaction().begin();
            User user = (User) em.createQuery("from User where Login = :login and Haslo = :haslo")
                    .setParameter("login", login)
                    .setParameter("haslo", haslo)
                    .getSingleResult();
            em.getTransaction().commit();
            return user;
        }
        
        public List getUsers() {
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("jcg-JPA");
            EntityManager em = emf.createEntityManager();
            em.getTransaction().begin();
            return em.createQuery("from User").getResultList();
        }
            
//	  
//	  public void delete(User user) {
//	    if (entityManager.contains(user))
//	      entityManager.remove(user);
//	    else
//	      entityManager.remove(entityManager.merge(user));
//	    return;
//	  }
//	  
//	  @SuppressWarnings("unchecked")
//	  public List getAll() {
//	    return entityManager.createQuery("from User").getResultList();
//	  }
//	  
//	  public User getByEmail(String email) {
//	    return (User) entityManager.createQuery(
//	        "from User where Email = :email")
//	        .setParameter("Email", email)
//	        .getSingleResult();
//	  }
//	  
//	  public User getByPesel(String pesel) {
//		    return (User) entityManager.createQuery(
//		        "from User where Pesel = :pesel")
//		        .setParameter("Pesel", pesel)
//		        .getSingleResult();
//		  }
//
//	  public void update(User user) {
//	    entityManager.merge(user);
//	    return;
//	  }
}
