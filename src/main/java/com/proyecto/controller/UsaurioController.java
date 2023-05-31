package com.proyecto.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

/*import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;*/

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
/*import org.springframework.http.ResponseEntity;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;*/
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
/*import org.springframework.web.bind.annotation.GetMapping;*/
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.proyecto.entity.Rol;
import com.proyecto.entity.Usuario;
import com.proyecto.service.RolService;
import com.proyecto.service.UsuarioService;

@Controller
public class UsaurioController {
	
	@Autowired
	private RolService rolService;
	
	@Autowired
	private UsuarioService usuarioService;
	/*@Autowired
	private JavaMailSender emailSender;*/
	
	
	@RequestMapping("/verUsuarios")
	public String verUsaurio() {
		return "usuarios";
	}
	
	
	@RequestMapping("/listaRol")
	@ResponseBody
	public List<Rol> listaRol(){
		List<Rol> lista = rolService.listaRol();
		return lista;
	}
	
	
	@RequestMapping("/listarUsaurios")
	@ResponseBody
	public List<Usuario> listaUsuario(String filtro){
		List<Usuario> lista = usuarioService.listarUsuarioPorNombre("%"+filtro+"%");
		return lista;
	}
	
	
	
	@RequestMapping("/insertarUsuarios")
	@ResponseBody
	public Map<String, Object> inserta(Usuario obj){
	    Map<String, Object> salida = new HashMap<String, Object>();
	    try {
	        // Establecer el estado del usuario como "Activo"
	        obj.setEstado("Activo");
	        
	        Usuario objResultado = usuarioService.insertarYactualizarUsuario(obj);
	        if(objResultado == null) {
	            salida.put("mensaje", "Error agregando usuario");
	        } else {
	            List<Usuario> lista = usuarioService.listaUsuario();
	            salida.put("lista", lista);
	            salida.put("mensaje", "Se registro con exito");
	        }
	    } catch (Exception e){
	        e.printStackTrace();
	    }
	    return salida;
	}
	
	
	@RequestMapping("/actualizaUsuario")
	@ResponseBody
	public Map<String, Object> actualiza(Usuario obj){
		Map<String, Object> salida = new HashMap<String, Object>();
		try {
			// Establecer el estado del usuario como "Activo"
	        obj.setEstado("Activo");
	        
			Usuario objResultado = usuarioService.insertarYactualizarUsuario(obj);
			if(objResultado == null) {
				salida.put("mensaje", "Error actualizando usuario");
			}else {
				List<Usuario> lista = usuarioService.listaUsuario();
				salida.put("lista", lista);
				salida.put("mensaje", "Se actualizo con exito");
			}
		}catch (Exception e){
			e.printStackTrace();
		}
		return salida;
	}
	
	/*@GetMapping("/enviar-correo")
	public ResponseEntity<String> enviarCorreos() throws MessagingException {
	    List<Usuario> usuarios = usuarioService.obtenerUsuarios();

	    for (Usuario usuario : usuarios) {
	        MimeMessage message = emailSender.createMimeMessage();
	        MimeMessageHelper helper = new MimeMessageHelper(message, true);
	        helper.setSubject("Asunto del correo");
	        helper.setText("Cuerpo del correo electrónico");
	        helper.setTo(usuario.getEmail());

	        try {
	            emailSender.send(message);
	        } catch (MailException e) {
	            // Manejo de excepciones
	            e.printStackTrace();
	        }
	    }

	    return ResponseEntity.ok("Correos enviados exitosamente.");
	}
	*/
	/*@RequestMapping("/eliminarUsaurios")
	@ResponseBody
	public Map<String, Object> elimina(String id){
		Map<String, Object> salida = new HashMap<String, Object>();
		try {
			Optional<Usuario> optUsuario = usuarioService.obtienerPorId(Long.parseLong(id));
			if(optUsuario.isEmpty()) {
				salida.put("mensaje", "No existe id " + id);
			}else {
				usuarioService.eliminarUsuario(Long.parseLong(id));
				List<Usuario> lista = usuarioService.listaUsuario();
				salida.put("lista", lista);
				salida.put("mensaje", "Usuario eliminado correctamente");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return salida;
	}*/
	
	@RequestMapping("/cambiarEstado")
	@ResponseBody
	public Map<String, Object> cambiarEstado(String id) {
	  Map<String, Object> salida = new HashMap<String, Object>();
	  try {
	    Optional<Usuario> optUsuario = usuarioService.obtienerPorId(Long.parseLong(id));
	    if(optUsuario.isEmpty()) {
	      salida.put("mensaje", "No existe id " + id);
	    } else {
	      Usuario usuario = optUsuario.get();
	      usuarioService.cambiaEstado(usuario);
	      List<Usuario> lista = usuarioService.listaUsuario();
	      salida.put("lista", lista);
	      salida.put("mensaje", "Estado cambiado correctamente");
	    }
	  } catch(Exception e) {
	    e.printStackTrace();
	  }
	  return salida;
	}
	
	/*@GetMapping("/download-stats")
	public ResponseEntity<byte[]> downloadStats() throws IOException {
	    byte[] pdf = generateStatsPdf(); // Generar el archivo PDF estadístico
	    HttpHeaders headers = new HttpHeaders();
	    headers.setContentType(MediaType.APPLICATION_PDF);
	    headers.setContentDisposition(ContentDisposition.attachment().filename("stats.pdf").build());
	    return new ResponseEntity<>(pdf, headers, HttpStatus.OK);
	}*/



}
	
	
	
	

