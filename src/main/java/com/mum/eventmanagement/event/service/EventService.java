package com.mum.eventmanagement.event.service;

import java.util.List;

import org.springframework.data.domain.Page;

import com.mum.eventmanagement.model.Event;

public interface EventService {

	List<Event> findEvents(long max, int count);

	Event findOne(int id);

	Page<Event> getEvents(Integer pageNumber);

	void save(Event event);
}
