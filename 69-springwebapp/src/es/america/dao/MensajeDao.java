package es.america.dao;

import java.util.List;

import es.america.pojo.Mensaje;

public interface MensajeDao {
	
	public Mensaje findByID(int id);
	public List<Mensaje> findByleido();
	public List<Mensaje> findByNoleido();
	public void save(Mensaje mensaje);
	public List<Mensaje> findAll();
	public void delete(Mensaje mensaje);

}
