package es.america.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import es.america.pojo.Admin;
import es.america.pojo.Usuario;
import es.america.service.UsuarioService;

@Controller
public class UsuarioController {

	@Autowired
	private UsuarioService usuarioService;


	@RequestMapping("/usuario/new")
	public String showForm(Model model) {
		model.addAttribute("usuario", new Usuario());
		model.addAttribute("usuarios", usuarioService.findAll());
		return "usuarios/create_usuario";
	}
	
	
	@RequestMapping("/usuario/save")
	public String usuarioSave(@ModelAttribute("usuario") Usuario usuarioForm,Model model,RedirectAttributes ra) {
		usuarioForm.setCreated(new Date());
		usuarioService.save(usuarioForm);
		ra.addFlashAttribute("mensaje", "todo correcto");
		ra.addFlashAttribute("mensajeType", "mensajeOK");
		return "redirect:/usuario/list";
	}
	
	@RequestMapping("/usuario/list")
	public String usuarioList(Model model) {
		
		model.addAttribute("usuarios", usuarioService.findAll());
		
		return "usuarios/lista_usuarios";
	}
	
	
	@RequestMapping(value="/usuario/save/json", produces="application/json")
	@ResponseBody
	public Map<String, Object> jsonCreateProducto(@RequestBody Usuario user) {
		Map<String, Object> map = new HashMap<String, Object>();
		usuarioService.save(user);
		map.put("status", "OK");
		map.put("mensaje", "Todo Perfecto");
		map.put("mensajeType", "mensajeOK");

		return map;
		
	}
}
