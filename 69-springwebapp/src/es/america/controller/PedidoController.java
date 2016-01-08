package es.america.controller;



import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import es.america.service.PedidoService;

@Controller
public class PedidoController {

		private PedidoService servicio;
	
	@RequestMapping(value="/pedidos/calendario")
	
	public String pedidoCalendario(Model model) {
		return "pedidos/calendar";
	}
}
