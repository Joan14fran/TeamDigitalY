package com.proyecto.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.proyecto.entity.Implemento;
import com.proyecto.entity.Localidad;
import com.proyecto.entity.Reserva;
import com.proyecto.entity.Tipo_Reserva;
import com.proyecto.entity.Usuario;
import com.proyecto.service.ImplementoService;
import com.proyecto.service.LocalidadService;
import com.proyecto.service.ReservaService;
import com.proyecto.service.TipoReservaService;
import com.proyecto.service.UsuarioService;

@Controller
public class ReservaGController {
	
	@Autowired
	private LocalidadService localidadService;
	
	@Autowired
	private TipoReservaService tipoRService;
	
	@Autowired 
	private UsuarioService usuarioService;
	
	@Autowired 
	private ImplementoService implementosSerivice;
	
	
	
	@RequestMapping("/listaLocalidadG")
	@ResponseBody
	public List<Localidad> listaLocalidad(){
		List<Localidad> lista = localidadService.listaLocalidad();
		return lista;
	}
	
	@RequestMapping("/listaTipoReservaG")
	@ResponseBody
	public List<Tipo_Reserva> listaTipoReserva(){
		List<Tipo_Reserva> lista = tipoRService.listaTipoReserva();
		return lista;
	}
	
	@RequestMapping("/listaUsuarioG")
	@ResponseBody
	public List<Usuario> listaUsuario(){
		List<Usuario> lista = usuarioService.listaUsuario();
		return lista;
	}
	
	@RequestMapping("/listaImplemetnosG")
	@ResponseBody
	public List<Implemento> listaImplemetnosR(){
		List<Implemento> lista = implementosSerivice.listaImplemento();
		return lista;
	}
	
	@RequestMapping("/verReservasG")
	public String verReserva() {
		return "reservaG";
	}
	@Autowired 
	private ReservaService reservaService;
	
	@RequestMapping("/listarReservasG")
	@ResponseBody
	public List<Reserva> listar(String filtro){
		List<Reserva> lista = reservaService.listarReservaPorNombre("%"+filtro+"%");
		return lista;
	}
	
	@RequestMapping("/agregaReservaG")
	@ResponseBody
	public Map<String, Object> insertar(Reserva obj) {
	    Map<String, Object> salida = new HashMap<String, Object>();
	    try {
	        obj.setEstado("Activa");

	        // Buscar reservas existentes con la misma fecha de recolección
	        List<Reserva> reservasConMismaFechaRecoleccion = reservaService.buscarPorFechaRecoleccion(obj.getFechaRecoleccion());
	        if (!reservasConMismaFechaRecoleccion.isEmpty()) {
	            salida.put("mensaje", "Ya existe una reserva con esta fecha de recolección");
	            return salida;
	        }

	        Reserva objResultado = reservaService.insertarYactualizarReserva(obj);
	        if (objResultado == null) {
	            salida.put("mensaje", "Error en el registro");
	        } else {
	            List<Reserva> lista = reservaService.listaReserva();
	            salida.put("lista", lista);
	            salida.put("mensaje", "Reserva creada con éxito");
	        }
	        // Después de guardar la reserva
	        salida.put("idReserva", objResultado.getIdReserva());

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return salida;
	}

	@RequestMapping("/buscarPorFechaRecoleccionG")
	@ResponseBody
	public List<Reserva> buscarPorFechaRecoleccion(@RequestParam("fechaRecoleccion") @DateTimeFormat(pattern = "yyyy-MM-dd") Date fechaRecoleccion) {
	    return reservaService.buscarPorFechaRecoleccion(fechaRecoleccion);
	}


	
	@RequestMapping("/actualizarReservaG")
	@ResponseBody
	public Map<String, Object> actualiza(Reserva obj){
		Map<String, Object> salida = new HashMap<String, Object>();
		try {
			obj.setEstado("Activa");
			
			Reserva objResultado = reservaService.insertarYactualizarReserva(obj);
			if(objResultado == null) {
				salida.put("mensaje", "Error actualizando reserva");
			}else {
				List<Reserva> lista = reservaService.listaReserva();
				salida.put("lista", lista);
				salida.put("mensaje", "Se Actualizo con exito");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return salida;
	}
	
	@RequestMapping("/actualizarEstadoG")
	@ResponseBody
	public Map<String, Object> actualizarEstado(String id){
	    Map<String, Object> salida = new HashMap<String, Object>();
	    try {
	        Optional<Reserva> optReserva = reservaService.porId(Long.parseLong(id));
	        if(optReserva.isEmpty()){
	            salida.put("mensaje", "No existe id" + id);
	        }else {
	            Reserva reserva = optReserva.get();
	            String estadoActual = reserva.getEstado();
	            if (estadoActual.equals("Activa")) {
	                reserva.setEstado("Cancelada");
	            } else if (estadoActual.equals("Cancelada")) {
	                reserva.setEstado("Activa");
	            }
	            reservaService.actualizarReserva(reserva);
	            List<Reserva> lista = reservaService.listaReserva();
	            salida.put("lista", lista);
	            salida.put("mensaje", "Actualización exitosa");
	        }
	    }catch(Exception e){
	        e.printStackTrace();
	    }
	    return salida;
	}


}
