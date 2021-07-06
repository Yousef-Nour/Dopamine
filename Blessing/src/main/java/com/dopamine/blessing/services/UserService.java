package com.dopamine.blessing.services;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.dopamine.blessing.models.DonationType;
import com.dopamine.blessing.models.Donations;
import com.dopamine.blessing.models.User;
import com.dopamine.blessing.repositories.DonationTypeRepository;
import com.dopamine.blessing.repositories.DonationsRepository;
import com.dopamine.blessing.repositories.RoleRepository;
import com.dopamine.blessing.repositories.UserRepository;

@Service
public class UserService {
    private UserRepository userRepository;
    private RoleRepository roleRepository;
    private DonationTypeRepository donTypeRepository;
    private BCryptPasswordEncoder bCryptPasswordEncoder;
    private DonationsRepository donationsRepository;
    
    public UserService(UserRepository userRepository, RoleRepository roleRepository, BCryptPasswordEncoder bCryptPasswordEncoder,DonationTypeRepository donTypeRepository
    		,DonationsRepository donationsRepository)     {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
        this.donTypeRepository = donTypeRepository;
        this.donationsRepository = donationsRepository;

    }
    
    
    // 1
    public User saveWithUserRole(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setRoles(roleRepository.findByName("ROLE_DONOR"));
        System.out.println(roleRepository.findByName("ROLE_DONOR"));
        return userRepository.save(user);
    }
     
     // 2 
    public void saveUserWithAdminRole(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setRoles(roleRepository.findByName("ROLE_ADMIN"));
        userRepository.save(user);
    }    
    
    //3
    public void saveUserWithOrganizationRole(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setRoles(roleRepository.findByName("ROLE_ORGANIZATION"));
        userRepository.save(user);
    }   
    
    // 4
    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }
    

    
    public List<User> findAllOrg(Long id){
    	return userRepository.findByRolesId(id);
    }
    
    public List<DonationType> findAllDonationTypes(){
    	return donTypeRepository.findAll();
    }


    public User findByid(Long id) {
        Optional<User> optionalldonations = userRepository.findById(id);
        if(optionalldonations.isPresent()) {
            return optionalldonations.get();
        } else {
            return null;
        }
    }
    
    
    public List<Donations> findAllDonations(){
    	return donationsRepository.findAll();
    }
    
    
	public Donations createDonation(Donations donation) {
		return donationsRepository.save(donation);
	}

	 public Donations findDonationByid(Long id) {
	        Optional<Donations> optionalldonations = donationsRepository.findById(id);
	        if(optionalldonations.isPresent()) {
	            return optionalldonations.get();
	        } else {
	            return null;
	        }
	    }


	public Donations addOrg(@Valid Donations donate, User organization) {
		donate.setOrganization(organization);
		return donationsRepository.save(donate);		
	}
	    
}

