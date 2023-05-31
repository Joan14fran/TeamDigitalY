package com.proyecto.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.proyecto.entity.Alquiler;
import com.proyecto.entity.Packing;
import com.proyecto.entity.Reserva;
import com.proyecto.service.PackingService;
import com.proyecto.service.ReservaService;


@Controller
public class PackingController {

	
	
	@Autowired
	private ReservaService reservaService;
	
	@RequestMapping("/verPacking")
	public String Packing() {
		return "packing";
	}
	
	@RequestMapping("/listaReservaP")
	@ResponseBody
	public List<Reserva> listaReserva(){
		List<Reserva> lista = reservaService.listaReserva();
		return lista;
	}
	
	@RequestMapping("/listarPackingP")
	@ResponseBody
	public List<Packing> listar(String filtro){
		List<Packing> lista = packingService.listarReservaPorNombre("%"+filtro+"%");
		return lista;
	}
	
	@RequestMapping("/insertarPacking")
	@ResponseBody
	public Map<String, Object> inserta(Packing obj){
		Map<String, Object> salida = new HashMap<String, Object>();
		try {
			Packing objResultado = packingService.insertarYactualizar(obj);
			if(objResultado == null) {
				salida.put("mensaje", "Error agregando packing");
			}else {
				List<Packing> lista = packingService.listaPacking();
				salida.put("lista", lista);
				salida.put("mensaje", "Se registro con exito");
			}
		}catch (Exception e){
			e.printStackTrace();
		}
		return salida;
	}
	
	
	
	@RequestMapping("/actualizarPacking")
	@ResponseBody
	public Map<String, Object> actualiza(Packing obj){
		Map<String, Object> salida = new HashMap<String, Object>();
		try {
			Packing objResultado = packingService.insertarYactualizar(obj);
			if(objResultado == null) {
				salida.put("mensaje", "Error actualizando packing");
			}else {
				List<Packing> lista = packingService.listaPacking();
				salida.put("lista", lista);
				salida.put("mensaje", "Se actualizo con exito");
			}
		}catch (Exception e){
			e.printStackTrace();
		}
		return salida;
	}
	
	@RequestMapping("/eliminarPacking")
	@ResponseBody
	public Map<String, Object> elimina(String id){
		Map<String, Object> salida = new HashMap<String, Object>();
		try {
			Optional<Packing> optPacking = packingService.porId(Long.parseLong(id));
			if(optPacking.isEmpty()) {
				salida.put("mensaje", "No existe id " + id);
			}else {
				packingService.eliminarPacking(Long.parseLong(id));
				List<Packing> lista = packingService.listaPacking();
				salida.put("lista", lista);
				salida.put("mensaje", "Packing eliminado correctamente");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return salida;
	}
	
	
	@Autowired
	private PackingService packingService;

	
	

	
	
	

	
}



	

