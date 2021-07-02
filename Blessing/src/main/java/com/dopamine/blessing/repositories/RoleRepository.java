package com.dopamine.blessing.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.dopamine.blessing.models.Role;

@Repository
<<<<<<< HEAD
public interface RoleRepository extends CrudRepository <Role, Long> {
=======
public interface RoleRepository extends CrudRepository <Role, Long>{
>>>>>>> 0ac4a552a1273812bfbacff559b65dc9a2bb21db
    List<Role> findAll();
    
    List<Role> findByName(String name);
}