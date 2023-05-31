package com.proyecto.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.proyecto.entity.Reserva;

public interface ReservaReposiotry extends JpaRepository<Reserva, Long> {
	
	@Query("SELECT r FROM Reserva r WHERE direccion LIKE :fil")
	public List<Reserva> listaReservaPorDireccion(@Param("fil")String filtro);
	
	@Query("SELECT r FROM Reserva r WHERE r.fechaRecoleccion = :fechaRecoleccion")
	List<Reserva> buscarPorFechaRecoleccion(@Param("fechaRecoleccion") Date fechaRecoleccion);
	
	List<Reserva> findByUsuario(Long idUsuario);
	
	@Modifying
	@Query("UPDATE Reserva r SET r.estado = 'Entregada' WHERE r.idReserva IN " +
	        "(SELECT p.reserva FROM Packing p WHERE p.reserva = r.idReserva " +
	        "AND p.idPacking IN (SELECT d.packing FROM Despacho d WHERE d.packing = p.idPacking " +
	        "AND d.estado = 'Entregado')) AND r.tipoReserva = 'Packing'")
	int  actualizarReservasEntregadasDesdePacking(@Param("idReserva") Long idReserva);
	
	List<Reserva> findByUsuarioIdUsuario(Long idUsuario);

	
	

}
