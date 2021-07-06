package com.dopamine.blessing.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.dopamine.blessing.models.Role;
import com.dopamine.blessing.models.User;

@Repository
public interface UserRepository extends CrudRepository<User, Long> {
    User findByUsername(String username);
    List<User> findByRolesId(Long roleid);
}