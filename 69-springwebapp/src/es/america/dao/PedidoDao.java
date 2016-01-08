package es.america.dao;

import java.util.List;


import es.america.pojo.Pedido;

public interface PedidoDao {
	public void save(Pedido pedido);
	public List<Pedido> findAll();
	public Pedido findById(int id);
	//public List<Pedido> findByNombre(String nombre);
	public void update(Pedido pedido);
	public void delete(Pedido pedido);
}
