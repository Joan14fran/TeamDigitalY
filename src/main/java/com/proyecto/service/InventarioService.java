package com.proyecto.service;

import java.util.List;
import java.util.Optional;

import com.proyecto.entity.Inventario;

public interface InventarioService {
	
	public List<Inventario> listaInventario();
	
	public Inventario insertarYactualizarInventario(Inventario obj);
	public Optional<Inventario> porId(Long idInventario);
	public void eliminarInventario(Long id);
	public List<Inventario> listarInventarioPorCantidad(Integer filtro);
	public void actualizarInventario(Inventario inventario);
	public int obtenerCantidadInvetarios();

}
