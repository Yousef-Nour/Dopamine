package com.dopamine.blessing.services;

import java.util.List;
import java.util.Optional;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.dopamine.blessing.models.Donations;
import com.dopamine.blessing.models.Role;
import com.dopamine.blessing.models.User;
import com.dopamine.blessing.repositories.DonationsRepository;
import com.dopamine.blessing.repositories.RoleRepository;
import com.dopamine.blessing.repositories.UserRepository;

@Service
public class UserService {
    private UserRepository userRepository;
    private RoleRepository roleRepository;
    private BCryptPasswordEncoder bCryptPasswordEncoder;
    private DonationsRepository donationRepo;
    
    public UserService(UserRepository userRepository, RoleRepository roleRepository, BCryptPasswordEncoder bCryptPasswordEncoder, DonationsRepository donationRepo)     {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
        this.donationRepo =donationRepo;
        
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
    
    public List<User> findAllOrg(){
    	String id = "3";
    	Long t = Long.parseLong(id);
    	Role role = roleRepository.findById(t).orElse(null);
    	return userRepository.findByRolesContaining(role);
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
//    	String id = "3";
//    	Long t = Long.parseLong(id);
//    	Role role = roleRepository.findById(t).orElse(null);
    	return donationRepo.findAll();
    }


	}





	
