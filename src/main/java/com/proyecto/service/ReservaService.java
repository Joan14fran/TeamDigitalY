package com.proyecto.service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import com.proyecto.entity.Reserva;

public interface ReservaService {
	
	public List<Reserva> listaReserva();
	public Reserva insertarYactualizarReserva(Reserva obj);
	public Optional<Reserva> porId(Long idReserva);
	public void eliminarReserva(Long id);
	public List<Reserva> listarReservaPorNombre(String filtro);
	public void actualizarReserva(Reserva reserva);
	
	List<Reserva> buscarPorFechaRecoleccion(Date fechaRecoleccion);
	
	List<Reserva> findByUsuario(Long idUsuario);
	public int obtenerCantidadReservas();
	
	public List<Reserva> listaReservaPorUsuario(Long idUsuario);
	

}
