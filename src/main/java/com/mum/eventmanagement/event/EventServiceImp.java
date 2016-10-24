package com.mum.eventmanagement.event;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mum.eventmanagement.model.Event;

@Service
public class EventServiceImp implements EventService {
	@Autowired
	EventRepository repository;
	@Autowired
	EventRepositoryPagination pagination;

	
	@Override
	public List<Event> findEvents(long max, int count) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Event findOne(int id) {
		return repository.findOne(id);
	}

	
}
