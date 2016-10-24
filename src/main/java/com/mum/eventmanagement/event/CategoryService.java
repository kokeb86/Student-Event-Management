package com.mum.eventmanagement.event;

import java.util.List;

import com.mum.eventmanagement.model.EventCategory;

public interface CategoryService {

	List<EventCategory> findAll();

}
