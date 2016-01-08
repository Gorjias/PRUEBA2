package es.america.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "categories")
public class Categorias {
	
	@Id
	@GeneratedValue
	private int id;
	
	private String nombre;
	private String link;
	private String logo;
	private int available;
	private String idioma;
	
	public Categorias(){
	}
	public Categorias(int id, String nombre, String link, String logo,
			int available, String idioma) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.link = link;
		this.logo = logo;
		this.available = available;
		this.idioma = idioma;
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
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public String getLogo() {
		return logo;
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	public int getAvailable() {
		return available;
	}
	public void setAvailable(int available) {
		this.available = available;
	}

	public String getIdioma() {
		return idioma;
	}
	public void setIdioma(String idioma) {
		this.idioma = idioma;
	}
	@Override
	public String toString() {
		return "Categorias [id=" + id + ", nombre=" + nombre + ", link=" + link
				+ ", logo=" + logo + ", available=" + available + ", idioma="
				+ idioma + "]";
	}
	
	
}
