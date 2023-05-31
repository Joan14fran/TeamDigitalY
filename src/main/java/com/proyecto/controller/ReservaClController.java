package com.proyecto.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.proyecto.entity.Alquiler;
import com.proyecto.entity.Implemento;
import com.proyecto.entity.Localidad;
import com.proyecto.entity.Packing;
import com.proyecto.entity.Reserva;
import com.proyecto.entity.Tipo_Reserva;
import com.proyecto.entity.Usuario;
import com.proyecto.repository.ReservaReposiotry;
import com.proyecto.service.AlquilerService;
import com.proyecto.service.ImplementoService;
import com.proyecto.service.LocalidadService;
import com.proyecto.service.PackingService;
import com.proyecto.service.ReservaService;
import com.proyecto.service.TipoReservaService;
import com.proyecto.service.UsuarioService;

@Controller
public class ReservaClController {
	@Autowired
	private LocalidadService localidadService;
	
	@Autowired
	private TipoReservaService tipoRService;
	
	@Autowired 
	private UsuarioService usuarioService;
	
	@Autowired 
	private ImplementoService implementosSerivice;
	
	@RequestMapping("/listaLocalidadC")
	@ResponseBody
	public List<Localidad> listaLocalidad(){
		List<Localidad> lista = localidadService.listaLocalidad();
		return lista;
	}
	
	@RequestMapping("/listaUsuarioC")
	@ResponseBody
	public List<Usuario> listaUsuario(HttpServletRequest request){
	    List<Usuario> lista = usuarioService.listaUsuario();
	    return lista;
	}
	@RequestMapping("/listaTipoReservaC")
	@ResponseBody
	public List<Tipo_Reserva> listarTipoReserva(HttpServletRequest request){
	    List<Tipo_Reserva> lista = tipoRService.listaTipoReserva();
	    return lista;
	}

	@RequestMapping("/listaImplemetnosRC")
	@ResponseBody
	public List<Implemento> listaImplemetnosR(){
		List<Implemento> lista = implementosSerivice.listaImplemento();
		return lista;
	}
	
	@RequestMapping("/vistaPersona")
	public String vistaCliente() {
		return "vistaPersona";
	}
	
	@Autowired 
	private ReservaService reservaService;
	
	
	@RequestMapping("/agregaReservaC")
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

	@RequestMapping("/buscarPorFechaRecoleccionC")
	@ResponseBody
	public List<Reserva> buscarPorFechaRecoleccion(@RequestParam("fechaRecoleccion") @DateTimeFormat(pattern = "yyyy-MM-dd") Date fechaRecoleccion) {
	    return reservaService.buscarPorFechaRecoleccion(fechaRecoleccion);
	}
	
	@GetMapping("/listarReservasPorUsuario")
	public List<Reserva> listar(String filtro, HttpSession session){
	    Long idUsuario = (Long) session.getAttribute("idUsuario");
	    List<Reserva> lista = reservaRepository.findByUsuarioIdUsuario(idUsuario);
	    return lista;
	}

	@RequestMapping("/actualizarReservaC")
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
	
	@RequestMapping("/actualizarEstadoC")
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
	@RequestMapping("/actualizarEstadoEntregadoC")
	@ResponseBody
	public Map<String, Object> actualizarEstadoEntregado(String id){
	    Map<String, Object> salida = new HashMap<String, Object>();
	    try {
	        Optional<Reserva> optReserva = reservaService.porId(Long.parseLong(id));
	        if(optReserva.isEmpty()){
	            salida.put("mensaje", "No existe id" + id);
	        }else {
	            Reserva reserva = optReserva.get();
	            String estadoActual = reserva.getEstado();
	            if (estadoActual.equals("Activa")) {
	                reservaRepository.actualizarReservasEntregadasDesdePacking(reserva.getIdReserva());
	                List<Reserva> lista = reservaService.listaReserva();
	                salida.put("lista", lista);
	                salida.put("mensaje", "Actualización exitosa");
	            } else {
	                salida.put("mensaje", "La reserva no está activa");
	            }
	        }
	    }catch(Exception e){
	        e.printStackTrace();
	    }
	    return salida;
	}

	@Autowired
	private ReservaReposiotry reservaRepository;
	
	@PostMapping("/actualizar-reserva-entregada-desde-packingC/{idReserva}")
	public ResponseEntity<?> actualizarReservaEntregadaDesdePacking(@PathVariable Long idReserva) {
	    reservaRepository.actualizarReservasEntregadasDesdePacking(idReserva);
	    return ResponseEntity.ok().build();
	}


	@Autowired
	private AlquilerService alquilerService;
	
	@RequestMapping("/insertarAlquilerRC")
	@ResponseBody
	public Map<String, Object> insertarAlquiler(Alquiler obj, @RequestParam Long idReserva) {
	    Map<String, Object> salida = new HashMap<String, Object>();
	    try {
	        obj.setReserva(reservaService.porId(idReserva));
	        Alquiler objResultado = alquilerService.insertarYactualizarAlquiler(obj);
	        if (objResultado == null) {
	            salida.put("mensaje", "Error en el registro");
	        } else {
	            salida.put("mensaje", "Alquiler creado con éxito");
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return salida;
	}
	
	@Autowired
	private PackingService packingService;
	
	@RequestMapping("/insertarPackingRC")
	@ResponseBody
	public Map<String, Object> insertarPacking(Packing obj, @RequestParam Long idReserva) {
	    Map<String, Object> salida = new HashMap<String, Object>();
	    try {
	        obj.setReserva(reservaService.porId(idReserva));
	        Packing objResultado = packingService.insertarYactualizar(obj);
	        if (objResultado == null) {
	            salida.put("mensaje", "Error en el registro");
	        } else {
	            salida.put("mensaje", "Packing creado con éxito");
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return salida;

	}






	
}