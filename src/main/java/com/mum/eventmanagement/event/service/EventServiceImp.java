package com.mum.eventmanagement.event.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mum.eventmanagement.event.repository.EventRepository;
import com.mum.eventmanagement.model.Event;

@Transactional
@Service
public class EventServiceImp implements EventService {
	@Autowired
	EventRepository repository;
	private static final int PAGE_SIZE = 10;

	@Override
	public List<Event> findEvents(long max, int count) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Event findOne(int id) {
		return repository.findOne(id);
	}

	public Page<Event> getEvents(Integer pageNumber) {
		PageRequest request = new PageRequest(pageNumber - 1, PAGE_SIZE, Sort.Direction.DESC, "startTime");
		return repository.findAll(request);
	}

	@Override
	public void save(Event event) {
		repository.save(event);
	}

}
