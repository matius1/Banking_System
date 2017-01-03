/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pk.ssi.dao;

import java.util.ArrayList;
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
    
    public int findNewId() {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("jcg-JPA");
        EntityManager em = emf.createEntityManager();
        Query query = em.createQuery("SELECT COALESCE(MAX(idRachunek), 0) FROM Rachunek");
        int result = (int) query.getSingleResult();
        return result;
    }
    
    public List getByPesel(Long pesel) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("jcg-JPA");
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        return em.createQuery("from Rachunek where Pesel = :pesel")
                .setParameter("pesel", pesel)
                .getResultList();
        }
    
    public String transfer(String nr1, String nr2, double transferValue){//money from 1 to 2
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
        Rachunek r1=results.get(0);//1 sposob query
        
        Query q2=em.createQuery("SELECT r FROM Rachunek r WHERE r.nrRachunku LIKE :nr2")
        .setParameter("nr2", nr2);
        Rachunek r2=(Rachunek)q2.getResultList().get(0);//2 sposob
        
        if(!r1.getWaluta().equals(r2.getWaluta()))
            return "badCurrency";
        else if(r1.getSaldo()<transferValue)
            return "lowBalance";
        else
        {
            em.getTransaction().begin();
            r1.setSaldo(r1.getSaldo()-transferValue);
            r2.setSaldo(r2.getSaldo()+transferValue);
            em.getTransaction().commit();
            return "success";
        }
    }
    
    public boolean isRachunekExist(String nr1){
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("jcg-JPA");
        EntityManager em = emf.createEntityManager();
        try{
            Query q1=em.createQuery("SELECT r FROM Rachunek r WHERE r.nrRachunku LIKE :nr1")
            .setParameter("nr1", nr1);
            q1.getResultList().get(0);
        }catch(Exception e){
            return false;
        }
        return true;
    }
    
}
