package com.dopamine.blessing.repositories;

import org.springframework.data.repository.CrudRepository;

import com.dopamine.blessing.models.Donations;

public interface DonationRepository extends CrudRepository<Donations, Long>{

}
