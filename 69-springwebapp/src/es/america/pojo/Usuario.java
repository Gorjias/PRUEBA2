package es.america.pojo;


import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;



@Entity
@Table(name = "users")
public class Usuario {

	@Id
	@GeneratedValue
	private int id;
	
	private String perfil;
	// @Column(name="nombreDeLATABLA")
	private String nombre;

	private String apellidos;
	
	public Usuario(int id, String perfil, String nombre, String apellidos,
			String correo, boolean valid_mail, String password,
			String changepass, Date fecha_nacimiento, Date created,
			Date updated, Date last_login) {
		super();
		this.id = id;
		this.perfil = perfil;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.correo = correo;
		this.valid_mail = valid_mail;
		this.password = password;
		this.changepass = changepass;
		this.fecha_nacimiento = fecha_nacimiento;
		this.created = created;
		this.updated = updated;
		this.last_login = last_login;
	}

	public String getPerfil() {
		return perfil;
	}

	public void setPerfil(String perfil) {
		this.perfil = perfil;
	}





	private String correo;
	
	private boolean valid_mail;
	
	private String password;
	
	private String changepass;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date fecha_nacimiento;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date created;
	
	@Temporal(TemporalType.TIMESTAMP)	
	private Date updated;
	 
	@Temporal(TemporalType.TIMESTAMP)
	private Date last_login;
	
	
	
	
	public Usuario(int id, String nombre, String apellidos, String correo,
			boolean valid_mail, String password, String changepass,
			Date fecha_nacimiento, Date created, Date updated, Date last_login) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.correo = correo;
		this.valid_mail = valid_mail;
		this.password = password;
		this.changepass = changepass;
		this.fecha_nacimiento = fecha_nacimiento;
		this.created = created;
		this.updated = updated;
		this.last_login = last_login;
		
	}

	public Usuario() {
		
	}


	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public boolean isValid_mail() {
		return valid_mail;
	}

	public void setValid_mail(boolean valid_mail) {
		this.valid_mail = valid_mail;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getChangepass() {
		return changepass;
	}

	public void setChangepass(String changepass) {
		this.changepass = changepass;
	}

	public Date getFecha_nacimiento() {
		return fecha_nacimiento;
	}

	public void setFecha_nacimiento(Date fecha_nacimiento) {
		this.fecha_nacimiento = fecha_nacimiento;
	}

	public Date getCreated() {
		return created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	public Date getUpdated() {
		return updated;
	}

	public void setUpdated(Date updated) {
		this.updated = updated;
	}

	public Date getLast_login() {
		return last_login;
	}

	public void setLast_login(Date last_login) {
		this.last_login = last_login;
	}

	


	public int getIdUsr() {
		return id;
	}

	public void setIdUsr(int idUsr) {
		this.id = idUsr;
	}





	@Override
	public String toString() {
		return "Usuario [id=" + id + ", perfil=" + perfil + ", nombre="
				+ nombre + ", apellidos=" + apellidos + ", correo=" + correo
				+ ", valid_mail=" + valid_mail + ", password=" + password
				+ ", changepass=" + changepass + ", fecha_nacimiento="
				+ fecha_nacimiento + ", created=" + created + ", updated="
				+ updated + ", last_login=" + last_login + "]";
	}

	

}
