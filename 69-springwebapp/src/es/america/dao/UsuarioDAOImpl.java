package es.america.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import es.america.pojo.Usuario;

@Repository
@Transactional
public class UsuarioDAOImpl implements UsuarioDAO{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}

	@Override
	public Usuario findByUsername(String usuario) {
		Criteria crit = getSession().createCriteria(Usuario.class)
				.add(Restrictions.eq("nombre", usuario));
		
		return (Usuario) crit.uniqueResult();
	}

	@Override
	public void save(Usuario usuario) {
		getSession().save(usuario);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Usuario> findAll() {
		return getSession().createQuery("from Usuario")
				.list();
	}

	@Override
	public void updatedLastLogin(Usuario user) {
		
		getSession().update(user);
		
	}

}
