package es.america.pojo;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

	@Entity
	@Table(name="facturas")
	public class Factura {
	@Id
	@GeneratedValue
	private int id;
	private String numero;
	private Date fecha;
	private String observaciones;
	private String e_nombre;
	private String e_apellidos;
	private String e_documento;
	private String e_direc;
	private String e_poblacion;
	private String e_cp;
	private String e_provincia;
	private String e_pais;
	private String r_nombre;
	private String r_apellidos;
	private String r_documento;
	private Date r_fecha_nacimiento;
	private String r_direc;
	private String r_poblacion;
	private String r_cp;
	private String r_provincia;
	private String r_pais;
	private String r_tlf;
	private String r_tlf2;
	private String r_email;


	public Factura(){
	}
	public Factura(int id, String numero, Date fecha, String observaciones,
			String e_nombre, String e_apellidos, String e_documento,
			String e_direc, String e_poblacion, String e_cp, String e_provincia,
			String e_pais, String r_nombre, String r_apellidos, String r_documento,
			Date r_fecha_nacimiento, String r_direc, String r_poblacion,
			String r_cp, String r_provincia, String r_pais, String r_tlf,
			String r_tlf2, String r_email) {
		super();
		this.id = id;
		this.numero = numero;
		this.fecha = fecha;
		this.observaciones = observaciones;
		this.e_nombre = e_nombre;
		this.e_apellidos = e_apellidos;
		this.e_documento = e_documento;
		this.e_direc = e_direc;
		this.e_poblacion = e_poblacion;
		this.e_cp = e_cp;
		this.e_provincia = e_provincia;
		this.e_pais = e_pais;
		this.r_nombre = r_nombre;
		this.r_apellidos = r_apellidos;
		this.r_documento = r_documento;
		this.r_fecha_nacimiento = r_fecha_nacimiento;
		this.r_direc = r_direc;
		this.r_poblacion = r_poblacion;
		this.r_cp = r_cp;
		this.r_provincia = r_provincia;
		this.r_pais = r_pais;
		this.r_tlf = r_tlf;
		this.r_tlf2 = r_tlf2;
		this.r_email = r_email;
	}
	@Override
	public String toString() {
		return "Factura [id=" + id + ", numero=" + numero + ", fecha=" + fecha
				+ ", observaciones=" + observaciones + ", e_nombre=" + e_nombre
				+ ", e_apellidos=" + e_apellidos + ", e_documento=" + e_documento
				+ ", e_direc=" + e_direc + ", e_poblacion=" + e_poblacion
				+ ", e_cp=" + e_cp + ", e_provincia=" + e_provincia + ", e_pais="
				+ e_pais + ", r_nombre=" + r_nombre + ", r_apellidos="
				+ r_apellidos + ", r_documento=" + r_documento
				+ ", r_fecha_nacimiento=" + r_fecha_nacimiento + ", r_direc="
				+ r_direc + ", r_poblacion=" + r_poblacion + ", r_cp=" + r_cp
				+ ", r_provincia=" + r_provincia + ", r_pais=" + r_pais
				+ ", r_tlf=" + r_tlf + ", r_tlf2=" + r_tlf2 + ", r_email="
				+ r_email + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNumero() {
		return numero;
	}
	public void setNumero(String numero) {
		this.numero = numero;
	}
	public Date getFecha() {
		return fecha;
	}
	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}
	public String getObservaciones() {
		return observaciones;
	}
	public void setObservaciones(String observaciones) {
		this.observaciones = observaciones;
	}
	public String getE_nombre() {
		return e_nombre;
	}
	public void setE_nombre(String e_nombre) {
		this.e_nombre = e_nombre;
	}
	public String getE_apellidos() {
		return e_apellidos;
	}
	public void setE_apellidos(String e_apellidos) {
		this.e_apellidos = e_apellidos;
	}
	public String getE_documento() {
		return e_documento;
	}
	public void setE_documento(String e_documento) {
		this.e_documento = e_documento;
	}
	public String getE_direc() {
		return e_direc;
	}
	public void setE_direc(String e_direc) {
		this.e_direc = e_direc;
	}
	public String getE_poblacion() {
		return e_poblacion;
	}
	public void setE_poblacion(String e_poblacion) {
		this.e_poblacion = e_poblacion;
	}
	public String getE_cp() {
		return e_cp;
	}
	public void setE_cp(String e_cp) {
		this.e_cp = e_cp;
	}
	public String getE_provincia() {
		return e_provincia;
	}
	public void setE_provincia(String e_provincia) {
		this.e_provincia = e_provincia;
	}
	public String getE_pais() {
		return e_pais;
	}
	public void setE_pais(String e_pais) {
		this.e_pais = e_pais;
	}
	public String getR_nombre() {
		return r_nombre;
	}
	public void setR_nombre(String r_nombre) {
		this.r_nombre = r_nombre;
	}
	public String getR_apellidos() {
		return r_apellidos;
	}
	public void setR_apellidos(String r_apellidos) {
		this.r_apellidos = r_apellidos;
	}
	public String getR_documento() {
		return r_documento;
	}
	public void setR_documento(String r_documento) {
		this.r_documento = r_documento;
	}
	public Date getR_fecha_nacimiento() {
		return r_fecha_nacimiento;
	}
	public void setR_fecha_nacimiento(Date r_fecha_nacimiento) {
		this.r_fecha_nacimiento = r_fecha_nacimiento;
	}
	public String getR_direc() {
		return r_direc;
	}
	public void setR_direc(String r_direc) {
		this.r_direc = r_direc;
	}
	public String getR_poblacion() {
		return r_poblacion;
	}
	public void setR_poblacion(String r_poblacion) {
		this.r_poblacion = r_poblacion;
	}
	public String getR_cp() {
		return r_cp;
	}
	public void setR_cp(String r_cp) {
		this.r_cp = r_cp;
	}
	public String getR_provincia() {
		return r_provincia;
	}
	public void setR_provincia(String r_provincia) {
		this.r_provincia = r_provincia;
	}
	public String getR_pais() {
		return r_pais;
	}
	public void setR_pais(String r_pais) {
		this.r_pais = r_pais;
	}
	public String getR_tlf() {
		return r_tlf;
	}
	public void setR_tlf(String r_tlf) {
		this.r_tlf = r_tlf;
	}
	public String getR_tlf2() {
		return r_tlf2;
	}
	public void setR_tlf2(String r_tlf2) {
		this.r_tlf2 = r_tlf2;
	}
	public String getR_email() {
		return r_email;
	}
	public void setR_email(String r_email) {
		this.r_email = r_email;
	}
	
	
}
