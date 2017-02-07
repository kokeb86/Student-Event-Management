package com.mum.eventmanagement.event.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.mum.eventmanagement.event.service.EventService;
import com.mum.eventmanagement.login.LoginServiceImp;
import com.mum.eventmanagement.model.Event;
import com.mum.eventmanagement.model.User;

@RequestMapping("/event")
@RestController
public class EventRestController {

	@Autowired
	EventService eventService;
	@Autowired
	LoginServiceImp loginService;

	@RequestMapping(value = "/event/like", method = RequestMethod.POST)
	public void addLike(@RequestParam int eventId, @RequestParam String username) {
		System.out.println("Adding Like.");
		// int eventIdNum = Integer.parseInt(eventId);
		User user = loginService.loadUserByUsername(username).getUser();
		Event event = eventService.findOne(eventId);
		event.like(user);
		eventService.save(event);
	}

}
