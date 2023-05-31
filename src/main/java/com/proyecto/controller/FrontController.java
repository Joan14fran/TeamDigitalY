package com.proyecto.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.proyecto.service.ContratoService;
import com.proyecto.service.DespachoService;
import com.proyecto.service.InventarioService;
import com.proyecto.service.ReservaService;
import com.proyecto.service.UsuarioService;

@Controller
public class FrontController {
	
	@RequestMapping("/verInicio")
	public String verInicio() {
		return  "index";
	}
	
	@RequestMapping("/verLogin")
	public String verLogin() {
		return  "login";
	}
	
	@RequestMapping("/verServicios")
	public String verServicio() {
		return  "servicios";
	}
	
	@RequestMapping("/verQuienesSomos")
	public String verQuienesSomos() {
		return  "quienessomos";
	}
	
	 @RequestMapping("/vistaAdmin")
		public String vistaAdmin() {
			return  "vistaAdmin";
		}
		@RequestMapping("/vistaGerente")
		public String verPerfilG() {
			return  "vistaGerente";
		}
		
		@Autowired
		private UsuarioService usuarioService;
		@Autowired
		private ReservaService reservaService;
		@Autowired
		private DespachoService despachosService;
		@Autowired
		private InventarioService inventariosService;
		@Autowired
		private ContratoService contratosService;
		
		@GetMapping("/cantidadUsuarios")
		@ResponseBody
		public int obtenerCantidadUsuarios() {
		    int cantidadUsuarios = usuarioService.obtenerCantidadUsuarios();
		    return cantidadUsuarios;
		}
		
		@GetMapping("/cantidadReservas")
		@ResponseBody
		public int cantidadReservas() {
		    int cantidadReservas = reservaService.obtenerCantidadReservas();
		    return cantidadReservas;
		}
		
		@GetMapping("/cantidadDespachos")
		@ResponseBody
		public int cantidadDespachos() {
		    int cantidadDespachos = despachosService.obtenerCantidadDespacho();
		    return cantidadDespachos;
		}
		
		@GetMapping("/cantidadInventarios")
		@ResponseBody
		public int cantidadInventarios() {
		    int cantidadInventarios = inventariosService.obtenerCantidadInvetarios();
		    return cantidadInventarios;
		}
		
		@GetMapping("/cantidadContratos")
		@ResponseBody
		public int cantidadContratos() {
		    int cantidadContratos = contratosService.obtenerCantidadContratos();
		    return cantidadContratos;
		}
		
		
	
	
	
	
	
	


}
