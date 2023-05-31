package com.proyecto.service;

import java.util.List;
import java.util.Optional;

import com.proyecto.entity.Packing;

public interface PackingService {
	
	public List<Packing> listaPacking();

    Optional<Packing> porId(Long id);

    Packing insertarYactualizar(Packing obj);

    void eliminarPacking(Long id);
    
    public List<Packing> listarReservaPorNombre(String filtro);
    
    
}
