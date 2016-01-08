package es.america.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "productos")
public class Producto {

	
	@Id
	@GeneratedValue
	private int id;
	
	private String nombre;
	private String link;
	private double precio;
	private double precio_anterior;
	private double descuento;
	private double ahorro;
	private String descripcion_corta;
	private String descripcion;
	private String info;
	private String condiciones;
	private String preguntas;
	private int allow_shipping;
	private int allow_pickup;
	private int categories_id;
	private double peso;
	private double cantidad;
	
	@OneToOne
	@JoinColumn(name = "id")
	private Categorias categoria;
	public Producto(){
		
	}
	
	
	
	
	public Categorias getCategoria() {
		return categoria;
	}




	public void setCategoria(Categorias categoria) {
		this.categoria = categoria;
	}




	public Producto(int id, String nombre, String link, double precio,
			double precio_anterior, double descuento, double ahorro,
			String descripcion_corta, String descripcion, String info,
			String condiciones, String preguntas, int allow_shipping,
			int allow_pickup, int categories_id, double peso, double cantidad) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.link = link;
		this.precio = precio;
		this.precio_anterior = precio_anterior;
		this.descuento = descuento;
		this.ahorro = ahorro;
		this.descripcion_corta = descripcion_corta;
		this.descripcion = descripcion;
		this.info = info;
		this.condiciones = condiciones;
		this.preguntas = preguntas;
		this.allow_shipping = allow_shipping;
		this.allow_pickup = allow_pickup;
		this.categories_id = categories_id;
		this.peso = peso;
		this.cantidad = cantidad;
	}
	@Override
	public String toString() {
		return "Productos [id=" + id + ", nombre=" + nombre + ", link=" + link
				+ ", precio=" + precio + ", precio_anterior=" + precio_anterior
				+ ", descuento=" + descuento + ", ahorro=" + ahorro
				+ ", descripcion_corta=" + descripcion_corta + ", descripcion="
				+ descripcion + ", info=" + info + ", condiciones="
				+ condiciones + ", preguntas=" + preguntas
				+ ", allow_shipping=" + allow_shipping + ", allow_pickup="
				+ allow_pickup + ", categories_id=" + categories_id + ", peso="
				+ peso + ", cantidad=" + cantidad + "]";
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
	public double getPrecio() {
		return precio;
	}
	public void setPrecio(double precio) {
		this.precio = precio;
	}
	public double getPrecio_anterior() {
		return precio_anterior;
	}
	public void setPrecio_anterior(double precio_anterior) {
		this.precio_anterior = precio_anterior;
	}
	public double getDescuento() {
		return descuento;
	}
	public void setDescuento(double descuento) {
		this.descuento = descuento;
	}
	public double getAhorro() {
		return ahorro;
	}
	public void setAhorro(double ahorro) {
		this.ahorro = ahorro;
	}
	public String getDescripcion_corta() {
		return descripcion_corta;
	}
	public void setDescripcion_corta(String descripcion_corta) {
		this.descripcion_corta = descripcion_corta;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getCondiciones() {
		return condiciones;
	}
	public void setCondiciones(String condiciones) {
		this.condiciones = condiciones;
	}
	public String getPreguntas() {
		return preguntas;
	}
	public void setPreguntas(String preguntas) {
		this.preguntas = preguntas;
	}
	public int getAllow_shipping() {
		return allow_shipping;
	}
	public void setAllow_shipping(int allow_shipping) {
		this.allow_shipping = allow_shipping;
	}
	public int getAllow_pickup() {
		return allow_pickup;
	}
	public void setAllow_pickup(int allow_pickup) {
		this.allow_pickup = allow_pickup;
	}
	public int getCategories_id() {
		return categories_id;
	}
	public void setCategories_id(int categories_id) {
		this.categories_id = categories_id;
	}
	public double getPeso() {
		return peso;
	}
	public void setPeso(double peso) {
		this.peso = peso;
	}
	public double getCantidad() {
		return cantidad;
	}
	public void setCantidad(double cantidad) {
		this.cantidad = cantidad;
	}
}
