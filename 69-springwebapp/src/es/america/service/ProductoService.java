package es.america.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import es.america.dao.ProductoDao;
import es.america.pojo.Producto;

@Service
public class ProductoService {
	
	@Autowired
	private ProductoDao productoDAO;
	
	public void save(Producto producto) {
		

		productoDAO.save(producto);
	}

	public List<Producto> findAll() {
		return productoDAO.findAll();
	}

	public Producto findByName(String nombre) {
		return productoDAO.findByProductname(nombre);
	}
	
	public Producto findById(int id) {
		return productoDAO.findByID(id);
	}

	public void saveOrUpdate(Producto produc) {
		if (produc.getId() == 0) {
			// Insert
			productoDAO.save(produc);
		} 
	}
	public void delete(int id) {
		productoDAO.delete(productoDAO.findByID(id));
		 
	}

}
