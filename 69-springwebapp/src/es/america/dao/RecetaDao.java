package es.america.dao;

import java.util.List;

import es.america.pojo.Receta;

public interface RecetaDao {
	
	public void save(Receta receta); 	
	public List<Receta> findAll();
	public void delete(Receta receta);
	public Receta findByID(int id);
}
