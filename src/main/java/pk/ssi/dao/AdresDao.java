package pk.ssi.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import pk.ssi.model.Adres;

@Repository
@Transactional
public class AdresDao {
	
	@PersistenceContext
	private EntityManager entityManager;

	public void create(Adres adres) {
	    EntityManagerFactory emf = Persistence.createEntityManagerFactory("jcg-JPA");
            EntityManager em = emf.createEntityManager();

            em.getTransaction().begin();
            em.persist(adres);
            em.getTransaction().commit();
	    return;
	  }
//	  
//	  public void delete(Adres adres) {
//	    if (entityManager.contains(adres))
//	      entityManager.remove(adres);
//	    else
//	      entityManager.remove(entityManager.merge(adres));
//	    return;
//	  }
//	  
//	  @SuppressWarnings("unchecked")
//	  public List getAll() {
//	    return entityManager.createQuery("from adres").getResultList();
//	  }
//	  
//	  public Adres getById(long id) {
//		    return entityManager.find(Adres.class, id);
//		  }
//
//	  public void update(Adres adres) {
//	    entityManager.merge(adres);
//	    return;
//	  }

}
