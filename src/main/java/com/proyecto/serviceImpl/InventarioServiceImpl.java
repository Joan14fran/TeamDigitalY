package com.proyecto.serviceImpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proyecto.entity.Inventario;
import com.proyecto.repository.InventarioRepository;
import com.proyecto.service.InventarioService;
@Service
public class InventarioServiceImpl implements InventarioService {

	@Autowired
	private InventarioRepository inventarioReposiotry;
	@Override
	public List<Inventario> listaInventario() {
		// TODO Auto-generated method stub
		return inventarioReposiotry.findAll();
	}
	@Override
	public Inventario insertarYactualizarInventario(Inventario obj) {
		// TODO Auto-generated method stub
		return inventarioReposiotry.save(obj);
	}
	@Override
	public Optional<Inventario> porId(Long idInventario) {
		// TODO Auto-generated method stub
		return inventarioReposiotry.findById(idInventario);
	}
	@Override
	public void eliminarInventario(Long id) {
		// TODO Auto-generated method stub
		inventarioReposiotry.deleteById(id);
		
	}
	@Override
	public void actualizarInventario(Inventario inventario) {
		// TODO Auto-generated method stub
		inventarioReposiotry.save(inventario);
		
	}
	@Override
	public List<Inventario> listarInventarioPorCantidad(Integer filtro) {
		// TODO Auto-generated method stub
		return inventarioReposiotry.listarInventarioPorCantidad(filtro);
	}
	@Override
	public int obtenerCantidadInvetarios() {
		List<Inventario> usuarios = inventarioReposiotry.findAll();
        return usuarios.size();
	}

}
