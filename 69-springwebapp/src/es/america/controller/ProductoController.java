package es.america.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import es.america.pojo.Admin;
import es.america.pojo.Producto;
import es.america.pojo.Receta;
import es.america.pojo.Usuario;
import es.america.service.ProductoService;

@Controller
public class ProductoController {

	
	@Autowired
	private ProductoService servicio;

	@RequestMapping(value="/producto/listado",method = RequestMethod.GET)
	
	public String listadoProductos(Model model, @ModelAttribute("resultado") String resultado) {

		List<Producto> producto= servicio.findAll();
		model.addAttribute("resultado", resultado);
		model.addAttribute("recetas", producto);

		return "productos/lista_productos";
	}
	
	@RequestMapping(value = "/producto/save", method = RequestMethod.POST)
	public String productoSave(@ModelAttribute("admin") Producto productoForm,
			Model model, RedirectAttributes ra) {

		servicio.save(productoForm);
		ra.addFlashAttribute("resultado", "Cambios realizados con éxito");

		return "redirect:/admin";
	}

	@RequestMapping("/producto/{id}/edit")
	public String recetaEdit(Model model, @PathVariable("id") int id) {
		
		Producto producto = servicio.findById(id);
		model.addAttribute("receta", producto);

		return "recetas/nuevo_producto";
	}

	@RequestMapping("/producto/{id}/delete")
	public String delete(@PathVariable("id") int id, RedirectAttributes ra) {
		
		servicio.delete(id);
		ra.addFlashAttribute("resultado", "Registro borrado con exito");

		return "redirect:/admin";
	}
	@RequestMapping(value="/producto/save/json", produces="application/json")
	@ResponseBody
	public Map<String, Object> jsonCreateProducto(@RequestBody Producto produc) {
		Map<String, Object> map = new HashMap<String, Object>();
		servicio.save(produc);
		map.put("status", "OK");
		map.put("mensaje", "Todo Perfecto");
		map.put("mensajeType", "mensajeOK");

		return map;
		
	}

}
