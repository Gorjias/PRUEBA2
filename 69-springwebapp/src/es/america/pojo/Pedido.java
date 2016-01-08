package es.america.pojo;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="pedidos")
public class Pedido {
	
	
@Id
@GeneratedValue
private int id;
private String observaciones;
private Date created;

@ManyToOne
@JoinColumn(name = "user_id")
private Usuario usuario;

@ManyToOne
@JoinColumn(name = "libretads_idlibretads")
private Direccion direccion;

public String toString() {
	return "Pedido [id=" + id + ", observaciones=" + observaciones
			+ ", created=" + created + ", usuario=" + usuario + ", direccion="
			+ direccion + "]";
}


public Pedido(){
	
}


public Pedido(int id, String observaciones, Date created, Usuario usuario,
		Direccion direccion) {
	super();
	this.id = id;
	this.observaciones = observaciones;
	this.created = created;
	this.usuario = usuario;
	this.direccion = direccion;
}

public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getObservaciones() {
	return observaciones;
}
public void setObservaciones(String observaciones) {
	this.observaciones = observaciones;
}

public Date getCreated() {
	return created;
}
public void setCreated(Date created) {
	this.created = created;
}
public Usuario getUsuario() {
	return usuario;
}
public void setUsuario(Usuario usuario) {
	this.usuario = usuario;
}
public Direccion getDireccion() {
	return direccion;
}
public void setDireccion(Direccion direccion) {
	this.direccion = direccion;
}




}
