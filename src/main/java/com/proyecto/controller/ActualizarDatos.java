package com.proyecto.controller;

import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.proyecto.entity.Usuario;
import com.proyecto.repository.UsuarioRepository;


@Controller
public class ActualizarDatos {
	
	

@Autowired
private UsuarioRepository usuarioRepository;

@GetMapping("/actualizarDatos")
public String mostrarFormularioDeEdicion(Model model, HttpSession session) {
    // Obtener el id del usuario actual a partir de la sesión
    Long idUsuario = (Long) session.getAttribute("idUsuario");

    // Obtener el objeto Usuario correspondiente a ese id
    Usuario usuario = usuarioRepository.findById(idUsuario).orElseThrow();

    // Agregar el objeto Usuario al modelo para que esté disponible en el formulario
    model.addAttribute("usuario", usuario);

    return "datosCliente";
}

@PostMapping("/actualizarDatos")
public String actualizarDatos(Model model, HttpSession session,
        @RequestParam(value = "usuario_clave_nueva_1", required = false) String nuevaClave1,
        @RequestParam(value = "usuario_clave_nueva_2", required = false) String nuevaClave2) {

    // Obtener el id del usuario actual a partir de la sesión
    Long idUsuario = (Long) session.getAttribute("idUsuario");

    // Obtener el objeto Usuario correspondiente a ese id
    Usuario usuario = usuarioRepository.findById(idUsuario).orElseThrow();

    // Verificar si se ingresó una nueva contraseña
    if (nuevaClave1 != null && !nuevaClave1.isEmpty() && nuevaClave2 != null && !nuevaClave2.isEmpty()) {
        // Verificar si las contraseñas coinciden
        if (nuevaClave1.equals(nuevaClave2)) {
            // Actualizar la contraseña del usuario
            usuario.setContrasena(nuevaClave2);
            usuarioRepository.save(usuario);
            model.addAttribute("mensaje", "La contraseña ha sido actualizada correctamente");
        } else {
            model.addAttribute("mensaje", "Las contraseñas no coinciden");
        }
    }

    // Agregar el objeto Usuario al modelo para que esté disponible en el formulario
    model.addAttribute("usuario", usuario);

    return "datosCliente";
}





}
