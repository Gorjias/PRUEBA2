package es.america.dao;

import java.util.List;

import es.america.pojo.Admin;
import es.america.pojo.Direccion;

public interface DireccionDao {
	
	public void save(Direccion direccion);
	public List<Direccion> findAll(Admin admin);

}
