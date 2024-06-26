package com.proyecto.serviceImpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proyecto.entity.Usuario;
import com.proyecto.repository.UsuarioRepository;
import com.proyecto.service.UsuarioService;

@Service
public class UsuarioServiceImpl implements UsuarioService{
	
	@Autowired
	private UsuarioRepository repository;

	@Override
	public List<Usuario> listaUsuario() {
		// TODO Auto-generated method stub
		return repository.findAll();
	}

	@Override
	public Usuario insertarYactualizarUsuario(Usuario obj) {
		// TODO Auto-generated method stub
		return repository.save(obj);
	}

	@Override
	public Optional<Usuario> obtienerPorId(Long idUsaurio) {
		// TODO Auto-generated method stub
		return repository.findById(idUsaurio);
	}

	@Override
	public void eliminarUsuario(Long id) {
		// TODO Auto-generated method stub
		repository.deleteById(id);
	}

	@Override
	public List<Usuario> listarUsuarioPorNombre(String filtro) {
		// TODO Auto-generated method stub
		return repository.listarUsuarioNombre(filtro);
	}

	@Override
	public void cambiaEstado(Usuario usuario) {
	    if(usuario.getEstado().equals("Activo")){
	        usuario.setEstado("Bloqueado");
	    } else {
	        usuario.setEstado("Activo");
	    }
	    repository.save(usuario);
	}

	/*@Override
	public List<Usuario> obtenerUsuarios() {
		 return repository.findAll();
	}*/
	
	@Override
    public Optional<Usuario> buscarPorEmail(String email) {
        return repository.findByEmail(email);
    }

	@Override
	public int obtenerCantidadUsuarios() {
		List<Usuario> usuarios = repository.findAll();
        return usuarios.size();
	}
	
	

}
