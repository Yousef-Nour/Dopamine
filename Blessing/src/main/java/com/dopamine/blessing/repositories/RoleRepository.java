package com.dopamine.blessing.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.dopamine.blessing.models.Role;

@Repository

public interface RoleRepository extends CrudRepository <Role, Long> {

	
	
    List<Role> findAll();
    
    List<Role> findByName(String name);

   
}