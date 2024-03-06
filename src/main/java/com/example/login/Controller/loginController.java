package com.example.login.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.example.login.Model.User;
import com.example.login.Model.UserRepo;

@Controller
public class loginController {
	
	@Autowired
	private UserRepo usrepo;
	
	
	private RestTemplate restTemplate = new RestTemplate();
	
	@GetMapping("/")
	public String loginPage()
	{
		return "login";
	}
	
	//requestparam will take username and password from UI
	@PostMapping("/log")
	public String homepage(@RequestParam("userName") String userName,@RequestParam("password") String password, Model model )
	{
		User u = null;
		try {
			
			u = usrepo.findByName(userName);
			System.out.println(u);
			
		}catch(Exception e)
		{
			System.out.println("User does not exit");
			//return "login";
		}
		if( u != null)
		{
		model.addAttribute("UserName", userName);
		return "homepage";
		}
		model.addAttribute("error","User not foun");
		System.out.println("User not found");
		return "login";
	}
	
	@GetMapping("/register")
	public String registerPage()
	{
		return "registration";
	}

	@PostMapping("/set-user")
	public String gotoregistration(@RequestParam("userName") String userName,@RequestParam("password") String password,@RequestParam("password2") String password2)
	{
		
			if(password.equals(password2))
			{
				restTemplate.getForObject("http://localhost:8081/register-user/"+userName+"/"+password,String.class);
				System.out.println("Regsiter SUccessful") ;
				
			}
			else
			{
				System.out.println("Passowrd not same!!");
				
			}
		
		//code to registration microservice
		return "login";
	}


}
