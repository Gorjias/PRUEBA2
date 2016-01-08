package es.america.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import es.america.dao.RecetaDao;
import es.america.pojo.Receta;

@Service
public class RecetaService {
	
	@Autowired
	private RecetaDao recetaDao;
	
	public void save(Receta receta) {
		recetaDao.save(receta);
	}

	public List<Receta> findAll() {
		return recetaDao.findAll();
	}

	public void delete(int id) {
		Receta receta = new Receta(id, null, null, null,null);
		recetaDao.delete(receta);
		
	}

	public Receta findById(int id) {
		return recetaDao.findByID(id);
		
	}

}
