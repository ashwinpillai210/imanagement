package com.rahul.pack.user;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@Controller

public class UserController 
{
	@Autowired
	UserRepo repo;
	
	@RequestMapping("/")
	public String display_form()
	{
		return "display.jsp";
	}
	
	@RequestMapping("/userForm")
	public String display_Userform()
	{
		return "userForm.jsp";
	}
	
	@RequestMapping("/userUpdate")
	public String display_UserUpdate()
	{
		return "userUpdate.jsp";
	}
	
	
	@ResponseBody
	@GetMapping("/users")
	public List<User> get(){
		return repo.findAll();
	}
	
	@ResponseBody
	@PostMapping("/users")
	public User save(@RequestBody User user){
		if(user!=null)
			return repo.save(user);
		else
			throw new RuntimeException("no data found");
	}
	
	@ResponseBody
	@GetMapping("/users/{id}")
	public User getById(@PathVariable int id){
		Optional <User> user= repo.findById(id);
		if (user.isPresent()){
			return user.get();
		}
		
		else {
			throw new RuntimeException("User Not Found for the id"+ id);
		}
	}
	
	@ResponseBody
	@DeleteMapping("/users/{id}")
	public String deleteById(@PathVariable int id){
		Optional <User> user= repo.findById(id);
		if (user.isPresent()){
			 repo.delete(user.get());
			 return("Deleted succesfully");
		}
		
		else {
			throw new RuntimeException("User Not Found for the id"+ id);
		}
	}
	
	@ResponseBody
	@PutMapping("/users")
	public User update(@RequestBody User user){
		return repo.save(user);
	}

		
}
