package com.proyecto.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.proyecto.entity.Usuario;

public interface UsuarioRepository extends JpaRepository<Usuario, Long>{
	
	@Query("SELECT u FROM Usuario u WHERE nombre LIKE :fil")
	public List<Usuario> listarUsuarioNombre(@Param("fil")String filtro);
	
	Optional<Usuario> findByEmail(String email);

    Optional<Usuario> findByDocumento(String documento);

    List<Usuario> findByRolNombre(String nombreRol);
    
    Usuario save(Usuario usuario);
    
	
	
	/*@Query("UPDATE u Usuarios u SET estado: 'Blqueado' WHERE estado:'null'")
	public Usuario bloquearUsuario(Usuario obj);*/

}
