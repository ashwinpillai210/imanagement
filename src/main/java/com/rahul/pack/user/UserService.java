package com.rahul.pack.user;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;



@Service
@Transactional
public class UserService 
{
	@Autowired
	private UserRepo repo;
	
	public void save(User user)
	{
		repo.save(user);
	}
	
	public User get(int id)
	{
		return repo.findById(id).get();
	}
	
	public void update(@RequestParam int id,User user) {
		/*
		 * for(int i=0;i<topic.size();i++) { Topics t=topic.get(i);
		 * 
		 * if(t.getId().equals(id)) { topic.set(i, topic2); return; }
		 
		}*/
		repo.save(user);
	}
}
