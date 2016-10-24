package com.mum.eventmanagement.event;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import com.mum.eventmanagement.model.Event;

@Repository
public interface EventRepositoryPagination extends PagingAndSortingRepository<Event, Integer> {

}
