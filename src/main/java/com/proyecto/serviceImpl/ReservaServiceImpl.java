package com.proyecto.serviceImpl;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proyecto.entity.Reserva;
import com.proyecto.repository.ReservaReposiotry;
import com.proyecto.service.ReservaService;

@Service
public class ReservaServiceImpl  implements ReservaService{
	
	@Autowired
	private ReservaReposiotry reservaReposiotry;

	@Override
	public List<Reserva> listaReserva() {
		// TODO Auto-generated method stub
		return reservaReposiotry.findAll();
	}

	@Override
	public Reserva insertarYactualizarReserva(Reserva obj) {
		// TODO Auto-generated method stub
		return reservaReposiotry.save(obj);
	}

	@Override
	public Optional<Reserva> porId(Long idReserva) {
		// TODO Auto-generated method stub
		return reservaReposiotry.findById(idReserva);
	}

	@Override
	public void eliminarReserva(Long id) {
		// TODO Auto-generated method stub
		reservaReposiotry.deleteById(id);
	}

	@Override
	public List<Reserva> listarReservaPorNombre(String filtro) {
		// TODO Auto-generated method stub
		return reservaReposiotry.listaReservaPorDireccion(filtro);
	}

	@Override
	public void actualizarReserva(Reserva reserva) {
		reservaReposiotry.save(reserva);
		
	}
	
	@Override
    public List<Reserva> buscarPorFechaRecoleccion(Date fechaRecoleccion) {
        return reservaReposiotry.buscarPorFechaRecoleccion(fechaRecoleccion);
    }

	@Override
	public List<Reserva> findByUsuario(Long idUsuario) {
		// TODO Auto-generated method stub
		return reservaReposiotry.findByUsuario(idUsuario);
	}

	@Override
	public int obtenerCantidadReservas() {
		List<Reserva> usuarios = reservaReposiotry.findAll();
        return usuarios.size();
	}

	@Override
	public List<Reserva> listaReservaPorUsuario(Long idUsuario) {
		// TODO Auto-generated method stub
		return reservaReposiotry.findByUsuarioIdUsuario(idUsuario);
	}

	
	

}
