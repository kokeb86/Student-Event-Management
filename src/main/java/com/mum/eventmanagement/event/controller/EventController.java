package com.mum.eventmanagement.event.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mum.eventmanagement.event.service.CategoryService;
import com.mum.eventmanagement.event.service.EventService;
import com.mum.eventmanagement.model.Event;

@RequestMapping("/event")
@Controller
// @SessionAttributes("user")
public class EventController {
	@Autowired
	EventService eventService;

	@Autowired
	CategoryService categoryService;

	@RequestMapping(value = "/events")
	public String events(Model model) {
		int pageNumber = 1;
		System.out.println("working");

		Page<Event> page = eventService.getEvents(pageNumber);

		int current = page.getNumber() + 1;
		int begin = Math.max(1, current - 5);
		int end = Math.min(begin + 10, page.getTotalPages());

		model.addAttribute("eventsList", page);
		model.addAttribute("currentIndex", current);
		System.out.println("Number of pages: " + page.getNumberOfElements());

		return "/event/events";
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add(Event event, Model model) {
		return "/event/add";
	}

	@RequestMapping(value = "/event", method = RequestMethod.GET)
	public String event() {
		return "/event/event";
	}

	@RequestMapping(value = "/events/{pageNumber}", method = RequestMethod.GET)
	public String getRunbookPage(@PathVariable Integer pageNumber, Model model) {
		Page<Event> page = eventService.getEvents(pageNumber);

		int current = page.getNumber() + 1;
		int begin = Math.max(1, current - 1);
		int end = Math.min(begin + 10, page.getTotalPages());

		model.addAttribute("eventsList", page);
		model.addAttribute("currentIndex", current);
		System.out.println("Number of pages: " + page.getNumberOfElements());
		return "/event/events";
	}

	public void addLIke() {
		UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();

	}
	/*
	 * @RequestMapping(value = "/events", method = RequestMethod.GET) public
	 * List<Event> spittles(@RequestParam(defaultValue = "-1") long max,
	 * 
	 * @RequestParam(defaultValue = "15") int count) { return
	 * service.findEvents(max, count); }
	 * 
	 * @RequestMapping(value = "/{eventId}", method = RequestMethod.GET) public
	 * String showSpittle(@PathVariable int eventId, Model model) {
	 * model.addAttribute(service.findOne(eventId)); return "event"; }
	 * 
	 * @RequestMapping(value = "/add", method = RequestMethod.GET) public String
	 * showRegistrationForm(@Valid Event event, Error error) { return "add"; }
	 * 
	 * @RequestMapping(method = RequestMethod.GET, produces =
	 * "application/json") public @ResponseBody List<Event>
	 * events(@RequestParam(value = "max", defaultValue = "-1") int max,
	 * 
	 * @RequestParam(value = "count", defaultValue = "20") int count) { return
	 * service.findEvents(max, count); }
	 * 
	 * // like event
	 * 
	 * @RequestMapping(method = RequestMethod.POST, consumes =
	 * "application/json") public @ResponseBody Like addLike(@RequestBody int
	 * eventId, @RequestBody int userID) { return likeService.save(eventId,
	 * userID); }
	 * 
	 * @RequestMapping(value = "/{id}", method = RequestMethod.GET) public
	 * ResponseEntity<Event> eventById(@PathVariable int id) { Event event =
	 * service.findOne(id); HttpStatus status = event != null ? HttpStatus.OK :
	 * HttpStatus.NOT_FOUND; return new ResponseEntity<Event>(event, status); }
	 * 
	 * @RequestMapping public @ResponseBody List<EventCategory> catogories(){
	 * return categoryService.findAll(); }
	 */
}
