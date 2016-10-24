package com.mum.eventmanagement.event;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.mum.eventmanagement.model.Event;

@Repository
public interface EventRepository extends CrudRepository<Event, Integer> {

}
