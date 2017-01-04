/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pk.ssi.dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import pk.ssi.model.Kontakt;
import pk.ssi.model.Rachunek;

/**
 *
 * @author Degus
 */
public class KontaktDao {
    
    public void create(Kontakt kontakt) {
	    EntityManagerFactory emf = Persistence.createEntityManagerFactory("jcg-JPA");
            EntityManager em = emf.createEntityManager();
                   
            em.getTransaction().begin();
            em.persist(kontakt);
            em.getTransaction().commit();
	  }
    
    public List<Kontakt> getContactsByPesel(long pesel){
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("jcg-JPA");
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        return em.createQuery("from Kontakt where Pesel LIKE :pesel")
                .setParameter("pesel", String.valueOf(pesel))
                .getResultList();
    }
    
}
