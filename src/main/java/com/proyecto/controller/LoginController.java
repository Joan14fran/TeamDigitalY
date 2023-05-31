package com.proyecto.controller;

import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.proyecto.entity.Rol;
import com.proyecto.entity.Usuario;
import com.proyecto.repository.RolRepository;
import com.proyecto.repository.UsuarioRepository;

@Controller
public class LoginController {

    @Autowired
    private UsuarioRepository usuarioRepository;
    
    @GetMapping("/verLogin1")
	public String verLogin1() {
		return  "login1";
	}
    
    @GetMapping("/verRegistro1")
	public String verRegistro1() {
		return  "registro1";
	}

    @PostMapping("/login")
    public ResponseEntity<String> login(@RequestParam String email, @RequestParam String password, HttpServletRequest request) {
        Optional<Usuario> usuarioOptional = usuarioRepository.findByEmail(email);

        if (!usuarioOptional.isPresent()) {
            return ResponseEntity.badRequest().body("Email o contraseña incorrectos");
        }

        Usuario usuario = usuarioOptional.get();

        if(usuario.getEstado().equals("Bloqueado")) {
            return ResponseEntity.badRequest().body("Su cuenta ha sido cancelada. Contacte con un administrador o servicio al cliente.");
        }

        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        if (encoder.matches(password, usuario.getContrasena())) {
            // La contraseña proporcionada es una contraseña cifrada.
            // Establecer la sesión y redirigir a la página correspondiente.
            String role = usuario.getRol().getNombre();
            String redirectUrl = "";
            if (role.equals("Administrador")) {
                redirectUrl = "/vistaAdmin";
            } else if (role.equals("Gerente")) {
                redirectUrl = "/vistaGerente";
            } else if (role.equals("Cliente")) {
                redirectUrl = "/vistaPersona";
            }

            request.getSession().setAttribute("usuarioNombre", usuario.getNombre());
            request.getSession().setAttribute("idUsuario", usuario.getIdUsuario());

            return ResponseEntity.ok(redirectUrl);
        } else if (password.equals(usuario.getContrasena())) {
            // La contraseña proporcionada es una contraseña sin cifrar.
            // Convertirla a una contraseña cifrada y actualizar la contraseña del usuario en la base de datos.
            String encodedPassword = encoder.encode(password);
            usuario.setContrasena(encodedPassword);
            usuarioRepository.save(usuario);

            // Establecer la sesión y redirigir a la página correspondiente.
            String role = usuario.getRol().getNombre();
            String redirectUrl = "";
            if (role.equals("Administrador")) {
                redirectUrl = "/vistaAdmin";
            } else if (role.equals("Gerente")) {
                redirectUrl = "/vistaGerente";
            } else if (role.equals("Cliente")) {
                redirectUrl = "/vistaPersona";
            }

            request.getSession().setAttribute("usuarioNombre", usuario.getNombre());
            request.getSession().setAttribute("idUsuario", usuario.getIdUsuario());

            return ResponseEntity.ok(redirectUrl);
        } else {
            // La contraseña proporcionada es incorrecta.
            return ResponseEntity.badRequest().body("Email o contraseña incorrectos");
        }
    }


   

    
    @Autowired
    private RolRepository rolRepository;
    
    
    @PostMapping("/registro")
    public ResponseEntity<String> registrarUsuario(@RequestParam String nombre, @RequestParam String apellido, @RequestParam String email,
                                    @RequestParam int documento, @RequestParam String contrasena) {

        // Validar si el correo electrónico ya está registrado
        Optional<Usuario> usuarioOptional = usuarioRepository.findByEmail(email);
        if (usuarioOptional.isPresent()) {
            return ResponseEntity.badRequest().body("Email ya registrado en la base de datos");
        }

        // Crear un nuevo usuario
        Usuario usuario = new Usuario();
        usuario.setNombre(nombre);
        usuario.setApellido(apellido);
        usuario.setEmail(email);
        usuario.setDocumento(documento);
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        String contrasenaEncriptada = encoder.encode(contrasena);
        usuario.setContrasena(contrasenaEncriptada);
        usuario.setEstado("Activo");
        
        // Buscar el rol "Cliente" por su nombre
        Rol rolCliente = rolRepository.findByNombre("Cliente");

        // Asignar el rol "Cliente" al usuario
        usuario.setRol(rolCliente);
        
        // Guardar el usuario en la base de datos
        usuarioRepository.save(usuario);
        
        // Devolver mensaje de éxito en formato JSON
        return ResponseEntity.ok("{\"mensaje\":\"Usuario creado correctamente\"}");
    }


    
}

