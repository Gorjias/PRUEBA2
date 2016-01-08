package es.america.dao;

import java.util.List;

import es.america.pojo.Producto;

public interface ProductoDao {
	public Producto findByProductname(String nombre);
	public Producto findByID(int id);
	public void save(Producto producto);
	public List<Producto> findAll();
	public void delete(Producto producto);


}
