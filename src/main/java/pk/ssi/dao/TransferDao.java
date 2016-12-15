/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pk.ssi.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import pk.ssi.model.Transfer;

/**
 *
 * @author Degus
 */
@Repository
@Transactional
public class TransferDao {
     public void create(Transfer transfer) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("jcg-JPA");
        EntityManager em = emf.createEntityManager();
                   
        em.getTransaction().begin();
        em.persist(transfer);
        em.getTransaction().commit();	    
    }
}
