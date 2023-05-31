package com.proyecto.serviceImpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proyecto.entity.Proveedor;
import com.proyecto.repository.ProveedorRepository;
import com.proyecto.service.ProveedorService;
@Service
public class ProveedorServiceImpl implements ProveedorService{

	@Autowired
	private ProveedorRepository proveedorReposiotry;

	@Override
	public List<Proveedor> listaProveedor() {
		return proveedorReposiotry.findAll();
	}

	@Override
	public Proveedor insertarYactualizar(Proveedor obj) {
		return proveedorReposiotry.save(obj);
	}

	@Override
	public Optional<Proveedor> proId(Long idProveedor) {
		return proveedorReposiotry.findById(idProveedor);
	}

	@Override
	public void eliminarProveedor(Long idProveedor) {
		proveedorReposiotry.deleteById(idProveedor);
	}

	@Override
	public List<Proveedor> listaProvedorPorNombre(String filtro) {
		return proveedorReposiotry.listaProveedorPorNombre(filtro);
	}

	@Override
	public void actualizarEstadoProveedor(Long idProveedor, String estado) {
	    Optional<Proveedor> optProveedor = proveedorReposiotry.findById(idProveedor);
	    if (optProveedor.isPresent()) {
	        Proveedor proveedor = optProveedor.get();
	        proveedor.setEstado(estado);
	        proveedorReposiotry.save(proveedor);
	    } else {
	        throw new RuntimeException("Proveedor no encontrado con id " + idProveedor);
	    }
	}
}
