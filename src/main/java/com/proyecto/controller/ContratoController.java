package com.proyecto.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.proyecto.entity.Alquiler;
import com.proyecto.entity.Contrato;
import com.proyecto.entity.Proveedor;
import com.proyecto.entity.Tipo_Contrato;
import com.proyecto.service.AlquilerService;
import com.proyecto.service.ContratoService;
import com.proyecto.service.ProveedorService;
import com.proyecto.service.TipoContratoService;

@Controller
public class ContratoController {
	
	@Autowired
	private ContratoService contratoService;
	
	@Autowired
	private TipoContratoService tipoCoService;
	
	@Autowired
	private AlquilerService alquilerSrevice;
	
	@Autowired
	private ProveedorService proveedorService;
	
	@RequestMapping("/verContratos")
	public String verContratos() {
		return  "contratos";
	}
	
	@RequestMapping("/listaTipoContrat")
	@ResponseBody
	public List<Tipo_Contrato> listaTipoCo(){
		List<Tipo_Contrato> lista = tipoCoService.listaTipoContrato();
		return lista;
	}
	
	@RequestMapping("/listaAlquiler")
	@ResponseBody
	public List<Alquiler> listaContrato(){
		List<Alquiler> lista = alquilerSrevice.listaAlquiler();
		return lista;
	}
	
	@RequestMapping("/listaProveedor")
	@ResponseBody
	public List<Proveedor> listaProveedor(){
		List<Proveedor> lista = proveedorService.listaProveedor();
		return lista;
	}
	
	@RequestMapping("/filtrarContratos")
	@ResponseBody
	public List<Contrato> filtrar(String filtro){
		List<Contrato> lista = contratoService.listaContratoPorNombre("%"+filtro+"%");
		return lista;
	}
	
	@RequestMapping("/crearContrato")
	@ResponseBody
	public Map<String, Object> agregar(Contrato obj) {
	    Map<String, Object> salida = new HashMap<String, Object>();
	    try {
	        Optional<Proveedor> proveedor = proveedorService.proId(obj.getProveedor().getIdProveedor());
	        if (!proveedor.isPresent() || proveedor.get().getEstado().equals("No disponible")) {
	            salida.put("mensaje", "El proveedor no está disponible para crear el contrato");
	        } else {
	            // Actualizar estado del proveedor
	            proveedor.get().setEstado("No disponible");
	            proveedorService.insertarYactualizar(proveedor.get());

	            // Crear contrato
	            Contrato objResultado = contratoService.insertaYactualizarContrato(obj);
	            if (objResultado == null) {
	                salida.put("mensaje", "Error registrando contrato");
	            } else {
	                List<Contrato> lista = contratoService.listaContrato();
	                salida.put("lista", lista);
	                salida.put("mensaje", "Se agregó correctamente");
	            }
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return salida;
	}


	
	@RequestMapping("/actualzaContrato")
	@ResponseBody
	public Map<String, Object> actualiza(Contrato obj){
		Map<String, Object> salida = new HashMap<String, Object>();
		try {
			Contrato objResultado = contratoService.insertaYactualizarContrato(obj);
			if(objResultado == null) {
				salida.put("mensaje", "Error al actualizar contrato");
			}else{
				List<Contrato> lista = contratoService.listaContrato();
				salida.put("lista", lista);
				salida.put("mnesaje", "Se actualizao correctamente");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return salida;
	}
	
}
