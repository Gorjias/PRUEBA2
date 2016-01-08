package es.america.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name="recetas")
public class Receta {
	
	@Id
	@GeneratedValue
	private int id;
	private String ingredientes;
	private String tiempos;
	private String explicacion;
	private String nombre;
	
	
	
	public Receta(){
		
	}
	public Receta(int id, String ingredientes, String tiempos,
			String explicacion, String nombre) {
		super();
		this.id = id;
		this.ingredientes = ingredientes;
		this.tiempos = tiempos;
		this.explicacion = explicacion;
		this.nombre = nombre;
	}

	@Override
	public String toString() {
		return "Receta [id=" + id + ", ingredientes=" + ingredientes
				+ ", tiempos=" + tiempos + ", explicacion=" + explicacion + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getIngredientes() {
		return ingredientes;
	}

	public void setIngredientes(String ingredientes) {
		this.ingredientes = ingredientes;
	}

	public String getTiempos() {
		return tiempos;
	}

	public void setTiempos(String tiempos) {
		this.tiempos = tiempos;
	}

	public String getExplicacion() {
		return explicacion;
	}

	public void setExplicacion(String explicacion) {
		this.explicacion = explicacion;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	

}
