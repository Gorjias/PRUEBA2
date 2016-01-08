package es.america.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import es.america.pojo.Admin;
import es.america.pojo.Receta;
import es.america.pojo.Usuario;

@SuppressWarnings("unchecked")
@Transactional
@Repository
public class RecetaDaoImpl implements RecetaDao {

	
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public void save(Receta receta) {
		getSession().save(receta);
	}

	@Override
	public List<Receta> findAll() {
		Query query = getSession().createQuery("from Receta"); // MySQL -> select * from Admin;
		return query.list();	}

	@Override
	public void delete(Receta receta) {
		
			getSession().delete(receta);
		
	}

	@Override
	public Receta findByID(int id) {
		Criteria crit = getSession().createCriteria(Receta.class)
				.add(Restrictions.eq("id", id));
		
		return (Receta) crit.uniqueResult();
	}

}
