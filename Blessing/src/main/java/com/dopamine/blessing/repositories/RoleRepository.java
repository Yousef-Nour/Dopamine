package com.dopamine.blessing.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.dopamine.blessing.models.Role;

@Repository
public interface RoleRepository extends CrudRepository {
    List<Role> findAll();
    
    List<Role> findByName(String name);
}