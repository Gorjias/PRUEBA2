package es.america.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


import javax.persistence.Table;

@Entity
@Table(name="servicios")
public class Servicios implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public Servicios(){
		super();
	}
	
	@Id
	@Column(name="idservicios")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int idservicios;
	
	@Column(name="idrol")
	private int idrol;
	
	
	@Column(name="nombre")
	private String nombre;
	
	
	public int getIdrol() {
		// begin-user-code
		return idrol;
		// end-user-code
	}

	
	public Servicios(int idservicios, String nombre, int idrol) {
		super();
		this.idservicios = idservicios;
		this.idrol = idrol;
		this.nombre = nombre;
		this.idrol = idrol;
	}


	public void setIdrol(int _idrol) {
		// begin-user-code
		this.idrol = _idrol;
		// end-user-code
	}
	



	 public String toString() {
	        return "idServicios" +idservicios + "idrol  " + idrol + "\nNombre: " + nombre + "\nIDROL " + idrol ;
	 }


	public int getIdservicios() {
		return idservicios;
	}


	public void setIdservicios(int idservicios) {
		this.idservicios = idservicios;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	} 
	
	
	
}
