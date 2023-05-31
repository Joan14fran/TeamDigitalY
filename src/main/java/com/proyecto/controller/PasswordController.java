package com.proyecto.controller;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PasswordController {

    @Autowired
    private JavaMailSender emailSender;

    @RequestMapping(value = "/recuperar-contrasena", method = RequestMethod.POST)
    public String recuperarContrasena(@RequestParam String email) {
        // Aquí puedes validar el correo y generar una nueva contraseña
        String nuevaContrasena = generarContrasenaAleatoria();
        enviarCorreo(email, nuevaContrasena);
        return "redirect:/nueva-contrasena";
    }

    private void enviarCorreo(String email, String nuevaContrasena) {
        MimeMessage message = emailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(message);
        try {
            helper.setTo(email);
            helper.setSubject("Recuperación de contraseña");
            helper.setText("Su nueva contraseña es: " + nuevaContrasena);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        emailSender.send(message);
    }

    private String generarContrasenaAleatoria() {
        // Aquí puedes generar una contraseña aleatoria
        return "password123";
    }
}

