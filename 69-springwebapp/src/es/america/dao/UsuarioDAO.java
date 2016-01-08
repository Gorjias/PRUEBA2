package es.america.dao;

import java.util.Date;
import java.util.List;

import es.america.pojo.Usuario;

public interface UsuarioDAO {
	
	public Usuario findByUsername(String usuario);
	public void save(Usuario usuario);
	public List<Usuario> findAll();
	public void updatedLastLogin(Usuario user);

}
