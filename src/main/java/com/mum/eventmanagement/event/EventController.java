package com.mum.eventmanagement.event;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mum.eventmanagement.model.Event;
import com.mum.eventmanagement.model.EventCategory;
import com.mum.eventmanagement.model.Like;

@RequestMapping("/event")
@Controller
// @SessionAttributes("user")
public class EventController {
	@Autowired
	EventService service;

	@Autowired
	LikeService likeService;

	@Autowired
	CategoryService categoryService;
	
	
	public String addNewEvent(Event event) {
		return "add";
	}

	public List<Event> events() {
		return null;
	}

	@RequestMapping(value = "/events", method = RequestMethod.GET)
	public List<Event> spittles(@RequestParam(defaultValue = "-1") long max,
			@RequestParam(defaultValue = "15") int count) {
		return service.findEvents(max, count);
	}

	@RequestMapping(value = "/{eventId}", method = RequestMethod.GET)
	public String showSpittle(@PathVariable int eventId, Model model) {
		model.addAttribute(service.findOne(eventId));
		return "event";
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String showRegistrationForm(@Valid Event event, Error error) {
		return "add";
	}

	@RequestMapping(method = RequestMethod.GET, produces = "application/json")
	public @ResponseBody List<Event> events(@RequestParam(value = "max", defaultValue = "-1") int max,
			@RequestParam(value = "count", defaultValue = "20") int count) {
		return service.findEvents(max, count);
	}

	// like event
	@RequestMapping(method = RequestMethod.POST, consumes = "application/json")
	public @ResponseBody Like addLike(@RequestBody int eventId, @RequestBody int userID) {
		return likeService.save(eventId, userID);
	}

	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public ResponseEntity<Event> eventById(@PathVariable int id) {
		Event event = service.findOne(id);
		HttpStatus status = event != null ? HttpStatus.OK : HttpStatus.NOT_FOUND;
		return new ResponseEntity<Event>(event, status);
	}
	
	@RequestMapping
	public @ResponseBody List<EventCategory> catogories(){
		return categoryService.findAll();
	}
}
