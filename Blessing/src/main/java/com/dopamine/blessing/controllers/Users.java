package com.dopamine.blessing.controllers;

import java.security.Principal;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dopamine.blessing.models.City;
import com.dopamine.blessing.models.Donations;
import com.dopamine.blessing.models.SendEmail;
import com.dopamine.blessing.models.User;
import com.dopamine.blessing.services.UserService;
import com.dopamine.blessing.validator.UserValidator;

@Controller
public class Users {
	private UserService userService;
	private UserValidator userValidator;

	public Users(UserService userService, UserValidator userValidator) {
		this.userService = userService;
		this.userValidator = userValidator;
	}

	@RequestMapping("/registration")
	public String registerForm(@Valid @ModelAttribute("user") User user, Model model) {
		model.addAttribute("cities",City.Cities);	
		return "loginRegistration.jsp";
	}

	@PostMapping("/registration")
	public String registration(@Valid @ModelAttribute("user") User user, BindingResult result, Model model,HttpSession session) {
		// NEW
		userValidator.validate(user, result);
		if (result.hasErrors()) {
			model.addAttribute("cities",City.Cities);
			return "loginRegistration.jsp";
		}
		User currentUser = userService.saveUserWithAdminRole(user);
//		User currentUser = userService.saveWithUserRole(user);
		model.addAttribute("currentUser",currentUser);
		model.addAttribute("donationTypes",userService.findAllDonationTypes());
		session.setAttribute("userId", currentUser.getId());
		return "redirect:/home";
	}

	@RequestMapping("/admin")
	public String adminPage(Principal principal, Model model) {
		String username = principal.getName();
		model.addAttribute("currentUser", userService.findByUsername(username));
		return "redirect:/createOrgenization";
	}

	@RequestMapping("/login")
	public String login(Principal principal,@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, Model model,@ModelAttribute("user") User user,HttpSession session) {
		model.addAttribute("cities",City.Cities);
		if (error != null) {
			model.addAttribute("cities",City.Cities);
			model.addAttribute("errorMessage", "Invalid Credentials, Please try again.");
		}
		if (logout != null) {
			model.addAttribute("cities",City.Cities);
			model.addAttribute("logoutMessage", "Logout Successful!");
		}
		session.setAttribute("userId", user.getId());
		return "loginRegistration.jsp";

	}

	@RequestMapping(value = {"/","/home"})
	public String home(Principal principal, Model model,@ModelAttribute("donation") Donations donation,HttpSession session) {
		String username = principal.getName();
		User current = userService.findByUsername(username);
		if(current.getRoles().get(0).getName().equals("ROLE_ORGANIZATION")) {
			return "redirect:/list";
		}
		Long id = (long) 3;
		model.addAttribute("currentUserId", userService.findByUsername(username).getId());
		model.addAttribute("allOrg",userService.findAllOrg(id));
		model.addAttribute("donationTypes",userService.findAllDonationTypes());
		return "homePage.jsp";
	}
	//logOUT
	@RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login"; 
    }
	@RequestMapping("/createOrgenization")
	public String adminPage(@Valid @ModelAttribute("organization") User organization,Model model) {
		model.addAttribute("cities", City.Cities);
		return "createOrganization.jsp";
	}

	@PostMapping("/createOrgenization")
	public String OrgRegistration(@Valid @ModelAttribute("organization") User organization, BindingResult result, Model model) {
		// NEW
		System.out.println("IAM HERE");
		userValidator.validate(organization, result);
		if (result.hasErrors()) {
			return "createOrganization.jsp";
		}
		User Org = userService.saveUserWithOrganizationRole(organization);
		String to = Org.getEmail();
		String desc = "your username is "+ Org.getUsername()+ " and your password is "+ Org.getUsername()+"@123";
		SendEmail.sendEmail(desc,to);
		return "redirect:/";
	}
	
	@PostMapping("/donate")
	public String Donate(@Valid @ModelAttribute("donation") Donations donation, BindingResult result, Model model) {
		if (result.hasErrors()) {
			System.out.println(result.toString());
			return "homePage.jsp";
		}
		userService.createDonation(donation);
		return "thankYou.jsp";
	}
	
	
	@RequestMapping("/list")
	public String list(Model model, Principal principal, @ModelAttribute("Donate") Donations donate){
		model.addAttribute("Donatins", userService.findAllDonations());
		String username= principal.getName();
		model.addAttribute("user", userService.findByUsername(username));
        return "DonationList.jsp";		
	}
	
	@RequestMapping("/accept/{id}")
	public String reg( @PathVariable Long id , @Valid @ModelAttribute("user") User user , HttpSession session) {
		userService.findByid(id);
		session.setAttribute("User", user);
		String to = user.getEmail();
//		String to = "rahaf.hussari@axsos.me";
		String desc = "Your donation has been accepted";
		SendEmail.sendEmail(desc,to);
		return "redirect:/list";
	}

	@PostMapping("/accept/{donationId}")
	public String reg( @PathVariable Long donationId , Principal principal ,HttpSession session) {
		String CurrOrganization= principal.getName();
		User organization = userService.findByUsername(CurrOrganization);
		Donations Donate = userService.findDonationByid(donationId);
		userService.addOrg(Donate ,organization );

		String to = Donate.getDonor().getEmail();
		String desc = "Your donation has been accepted by" + CurrOrganization;
		SendEmail.sendEmail(desc,to);
//		System.out.println("This is user email"+ to);
//		System.out.println("this is org" +organization);
//		System.out.println("this is donation"+Donate);
//		MimeMessage2.send(to);
//		System.out.println("this is message"+message);
//		message.send(to);
		return "redirect:/list";
	}
	


}