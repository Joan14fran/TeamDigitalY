package com.proyecto.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proyecto.entity.Reserva;
import com.proyecto.repository.ReservaGRepository;

@Service
public class ReservaGService {

    @Autowired
    private ReservaGRepository reservaRepository;

    public List<Reserva> getAll() {
        return reservaRepository.findAll();
    }

    public Reserva getById(Long id) {
        return reservaRepository.findById(id)
            .orElseThrow(() -> new RuntimeException("Reserva no encontrada"));
    }

    public Reserva create(Reserva reserva) {
        return reservaRepository.save(reserva);
    }

    public Reserva update(Long id, Reserva reserva) {
        Reserva oldReserva = getById(id);
        oldReserva.setDireccion(reserva.getDireccion());
        oldReserva.setEmail(reserva.getEmail());
        oldReserva.setFechaInicio(reserva.getFechaInicio());
        oldReserva.setFechaRecoleccion(reserva.getFechaRecoleccion());
        oldReserva.setTelefono(reserva.getTelefono());
        oldReserva.setUsuario(reserva.getUsuario());
        oldReserva.setLocalidad(reserva.getLocalidad());
        oldReserva.setTipoReserva(reserva.getTipoReserva());
        return reservaRepository.save(oldReserva);
    }

    public void delete(Long id) {
        reservaRepository.deleteById(id);
    }
}
