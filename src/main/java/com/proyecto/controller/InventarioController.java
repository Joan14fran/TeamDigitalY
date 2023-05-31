package com.proyecto.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.proyecto.entity.Inventario;
import com.proyecto.service.InventarioService;

@Controller
public class InventarioController {
	
	@RequestMapping("/verInventario")
	public String verInventario() {
		return "inventario";
	}
	
	@Autowired
	private InventarioService invetarioService;
	
	@RequestMapping("/listaInventarioI")
	@ResponseBody
	public List<Inventario> listar() {
	    List<Inventario> lista = invetarioService.listaInventario();
	    return lista;
	}

	
	@RequestMapping("/insertarInvenetario")
	@ResponseBody
	public Map<String, Object> inserta(Inventario obj){
		Map<String, Object> salida = new HashMap<String, Object>();
		try {
			Inventario objResultado = invetarioService.insertarYactualizarInventario(obj);
			if(objResultado == null) {
				salida.put("mensaje", "Error agregando invetario");
			}else {
				List<Inventario> lista = invetarioService.listaInventario();
				salida.put("lista", lista);
				salida.put("mensaje", "Se registro con exito");
			}
		}catch (Exception e){
			e.printStackTrace();
		}
		return salida;
	}
	

}
