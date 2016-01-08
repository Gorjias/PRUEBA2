package es.america.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import es.america.pojo.Producto;


@Repository
@Transactional
public class ProductoDaoImpl implements ProductoDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}

	@Override
	public Producto findByProductname(String nombre) {
		Criteria crit = getSession().createCriteria(Producto.class)
				.add(Restrictions.eq("nombre", nombre));
		
		return (Producto) crit.uniqueResult();	}

	@Override
	public void save(Producto producto) {
		getSession().save(producto);
		
	}

	@Override
	public List<Producto> findAll() {
		return (List<Producto>)getSession().createQuery("from Productos").list();
	}

	@Override
	public Producto findByID(int id) {
		Criteria crit = getSession().createCriteria(Producto.class)
				.add(Restrictions.eq("id", id));
		
		return (Producto) crit.uniqueResult();	
	}

	@Override
	public void delete(Producto producto) {
		getSession().delete(producto);
		
	}

}
