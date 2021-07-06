package com.dopamine.blessing.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.dopamine.blessing.models.Donations;

public interface DonationsRepository extends CrudRepository<Donations, Long> {
  List <Donations> findAll();
}
