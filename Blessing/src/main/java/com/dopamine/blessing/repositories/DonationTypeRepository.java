package com.dopamine.blessing.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.dopamine.blessing.models.DonationType;

public interface DonationTypeRepository extends CrudRepository<DonationType, Long>{
	List<DonationType> findAll();
}
