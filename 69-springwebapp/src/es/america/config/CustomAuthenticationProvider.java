package es.america.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

@Component
public class CustomAuthenticationProvider implements AuthenticationProvider{
	
	@Autowired
	private CustomUserDetailsService customUserDetailsService;
	
	@Autowired
	private PasswordEncoder passwordEncoder;

	@Override
	public Authentication authenticate(Authentication authentication)
			throws AuthenticationException {

		// Datos del form de login
		String principal = authentication.getName();
		String credentials = (String) authentication.getCredentials();
		
		User user = (User) customUserDetailsService.loadUserByUsername(principal);
		
		if (user != null) {
			// Comprobar contraseña
			
				System.out.println("Login correcto");
				return new UsernamePasswordAuthenticationToken(principal, user.getPassword(), user.getAuthorities());

		} 
		else {
			System.out.println("Error de login: " + principal);
			throw new BadCredentialsException("Error de login");
		}
	}

	@Override
	public boolean supports(Class<?> authentication) {
		return true;
	}

}
