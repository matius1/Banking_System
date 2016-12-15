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
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.ParameterExpression;
import javax.persistence.criteria.Root;
import org.hibernate.Criteria;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import pk.ssi.model.Rachunek;

/**
 *
 * @author Degus
 */
@Repository
@Transactional
public class RachunekDao {
    
    public void create(Rachunek rachunek) {
	    EntityManagerFactory emf = Persistence.createEntityManagerFactory("jcg-JPA");
            EntityManager em = emf.createEntityManager();
                   
            em.getTransaction().begin();
            em.persist(rachunek);
            em.getTransaction().commit();
	  }
    
    public void transfer(String nr1, String nr2, double value){
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("jcg-JPA");
        EntityManager em = emf.createEntityManager();
        CriteriaBuilder cb = em.getCriteriaBuilder();
        CriteriaQuery<Rachunek> q = cb.createQuery(Rachunek.class);
        Root<Rachunek> r = q.from(Rachunek.class);
        q.select(r);
        ParameterExpression<String> p = cb.parameter(String.class);
        q.where(cb.like(r.get("nrRachunku"), nr1));
        TypedQuery<Rachunek> query = em.createQuery(q);
        List<Rachunek> results = query.getResultList();
        Rachunek r1=results.get(0);
        System.out.println(r1.getNrRachunku());
        System.out.println(r1.getSaldo());
    }
    
}
