package com.proyecto.repository;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.proyecto.entity.Packing;
import com.proyecto.entity.Reserva;

public interface PackingReposiotry extends JpaRepository<Packing, Long> {
	
	@Query("SELECT p FROM Packing p WHERE nombreDestinatario LIKE :fil")
	public List<Packing> listarporNombre(@Param("fil")String filtro);
	
	
	
	
}
