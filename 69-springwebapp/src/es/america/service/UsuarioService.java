package es.america.service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import es.america.dao.UsuarioDAO;
import es.america.pojo.Usuario;

@Service
public class UsuarioService {

	@Autowired
	private UsuarioDAO usuarioDAO;
	
	@Autowired
	private PasswordEncoder passwordEncoder;

	public void save(Usuario usuario) {
		usuario.setCreated(new Date());
		usuario.setFecha_nacimiento(new Date());
		usuario.setUpdated(new Date());
		usuario.setLast_login(new Date());
		usuario.setValid_mail(true);
		usuario.setChangepass("no");

		String claveUsr = usuario.getPassword();
		usuario.setPassword(passwordEncoder.encode(claveUsr));
		usuarioDAO.save(usuario);
	}

	public List<Usuario> findAll() {
		return usuarioDAO.findAll();
	}
	public void updatedLastLogin(Usuario user) {
		
		//DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		user.setLast_login(new Date());
		usuarioDAO.updatedLastLogin(user);
	}
}
