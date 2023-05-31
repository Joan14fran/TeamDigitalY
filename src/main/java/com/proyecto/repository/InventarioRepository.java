package com.proyecto.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.proyecto.entity.Inventario;

public interface InventarioRepository extends JpaRepository<Inventario, Long> {
	
	@Query("SELECT i FROM Inventario i WHERE cantidad LIKE %:filtro%")
	public List<Inventario> listarInventarioPorCantidad(@Param("filtro") Integer filtro);


}
