package com.mum.eventmanagement.event;

import java.util.List;

import com.mum.eventmanagement.model.Event;

public interface EventService {

	List<Event> findEvents(long max, int count);

	Event findOne(int id);

}
