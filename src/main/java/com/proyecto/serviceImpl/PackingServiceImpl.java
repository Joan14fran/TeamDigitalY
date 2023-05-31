package com.proyecto.serviceImpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proyecto.entity.Packing;
import com.proyecto.repository.PackingReposiotry;
import com.proyecto.service.PackingService;

@Service
public class PackingServiceImpl implements PackingService{

	@Autowired
	private PackingReposiotry packingRepository;
	
	@Override
	public List<Packing> listaPacking() {
		return packingRepository.findAll();
	}

	@Override
	public Packing insertarYactualizar(Packing obj) {
		return packingRepository.save(obj);
	}

	@Override
	public void eliminarPacking(Long id) {
		packingRepository.deleteById(id);
	}

	@Override
	public Optional<Packing> porId(Long id) {
		return packingRepository.findById(id);
	}

	@Override
	public List<Packing> listarReservaPorNombre(String filtro) {
		// TODO Auto-generated method stub
		return packingRepository.listarporNombre(filtro);
	}
	
}
