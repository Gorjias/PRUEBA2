package es.america.config;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import es.america.dao.UsuarioDAO;
import es.america.pojo.Usuario;

@Service("customUserDetailsService")
public class CustomUserDetailsService implements UserDetailsService{
	
	@Autowired
	private UsuarioDAO usuarioDAO;

	@Override
	public UserDetails loadUserByUsername(String username)
			throws UsernameNotFoundException {

		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		Usuario usuario = usuarioDAO.findByUsername(username);
		
		if (usuario != null) {
			authorities.add(new SimpleGrantedAuthority(usuario.getPerfil()));
			User user = new User(usuario.getNombre(), usuario.getPassword(), authorities);
			usuarioDAO.updatedLastLogin(usuario);
			return user;
		} 
		else {
			throw new UsernameNotFoundException("Usuario no encontrado");
		}
		
	}

}
