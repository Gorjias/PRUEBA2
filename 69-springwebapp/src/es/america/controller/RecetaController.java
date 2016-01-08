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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import es.america.pojo.Admin;
import es.america.pojo.Receta;
import es.america.pojo.Usuario;
import es.america.service.AdminService;
import es.america.service.RecetaService;
@Controller
public class RecetaController {

	
	@Autowired
	private AdminService adminService;
	@Autowired
	private RecetaService servicio;

	@RequestMapping(value="/lista_recetas",method = RequestMethod.GET)
	
	public String listaReceta(Model model, @ModelAttribute("resultado") String resultado) {

		List<Receta> receta = servicio.findAll();
		model.addAttribute("resultado", resultado);
		model.addAttribute("recetas", receta);

		return "recetas/lista_recetas";
	}

	@RequestMapping(value = "/receta/save", method = RequestMethod.POST)
	public String handleAdmin(@ModelAttribute("admin") Admin adminForm,
			Model model, RedirectAttributes ra) {

		adminService.saveOrUpdate(adminForm);
		ra.addFlashAttribute("resultado", "Cambios realizados con éxito");

		return "redirect:/admin";
	}

	@RequestMapping("/receta/{id}/edit")
	public String recetaEdit(Model model, @PathVariable("id") int id) {
		
		Receta receta = servicio.findById(id);
		model.addAttribute("receta", receta);

		return "recetas/nueva_receta";
	}

	@RequestMapping("/receta/{id}/delete")
	public String delete(@PathVariable("id") int id, RedirectAttributes ra) {
		
		servicio.delete(id);
		ra.addFlashAttribute("resultado", "Cambios realizados con éxito");

		return "redirect:/admin";
	}
	
	@RequestMapping("/receta/new")
	public String nuevaReceta(Model model, RedirectAttributes ra) {
		
		Receta receta= new Receta();
		ra.addFlashAttribute("resultado", "Cambios realizados con éxito");
		model.addAttribute("receta", receta);
		return "recetas/create_receta";
	}
	
	
	@RequestMapping(value="/receta/json/save", produces="application/json")
	@ResponseBody
	public Map<String, Object> recetaJsonSave(@RequestBody Receta receta) {
		Map<String, Object> map = new HashMap<String, Object>();
		servicio.save(receta);
		map.put("status", "OK");
		map.put("mensaje", "Todo Perfecto");
		map.put("mensajeType", "mensajeOK");		
		return map;
	}
	
	@RequestMapping("/receta/calculador")
	public String calcularReceta(Model model, RedirectAttributes ra) {
		
		Receta receta= new Receta();
		ra.addFlashAttribute("resultado", "Cambios realizados con éxito");
		model.addAttribute("receta", receta);
		return "recetas/calculador_receta";
	}
	
	@RequestMapping("/receta/materias")
	public String materiasList(Model model, RedirectAttributes ra) {
		
		Receta receta= new Receta();
		ra.addFlashAttribute("resultado", "Cambios realizados con éxito");
		model.addAttribute("receta", receta);
		return "recetas/calculador_receta";
	}
	
	
}
