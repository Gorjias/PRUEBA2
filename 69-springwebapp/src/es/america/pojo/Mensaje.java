package es.america.pojo;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Mensaje {

	
	@Id
	@GeneratedValue
	private int id;
	
	@ManyToOne
	@JoinColumn(name = "user_id")
	private Usuario usuario;
	private String nombre;
	private String apellidos;
	private String email;
	private String mensaje;
	private int leido;
	private Date fechalectura;
	private Date created;
	private Date updated;
	
	
	
	public Mensaje(){
		
	}
	
	
	
	
	
	
	public Mensaje(int id, Usuario usuario, String nombre, String apellidos,
			String email, String mensaje, int leido, Date fechalectura,
			Date created, Date updated) {
		super();
		this.id = id;
		this.usuario = usuario;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.email = email;
		this.mensaje = mensaje;
		this.leido = leido;
		this.fechalectura = fechalectura;
		this.created = created;
		this.updated = updated;
	}
	@Override
	public String toString() {
		return "Mensaje [id=" + id + ", usuario=" + usuario + ", nombre="
				+ nombre + ", apellidos=" + apellidos + ", email=" + email
				+ ", mensaje=" + mensaje + ", leido=" + leido
				+ ", fechalectura=" + fechalectura + ", created=" + created
				+ ", updated=" + updated + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Usuario getUsuario() {
		return usuario;
	}
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMensaje() {
		return mensaje;
	}
	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}
	public int getLeido() {
		return leido;
	}
	public void setLeido(int leido) {
		this.leido = leido;
	}
	public Date getFechalectura() {
		return fechalectura;
	}
	public void setFechalectura(Date fechalectura) {
		this.fechalectura = fechalectura;
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

	
}
