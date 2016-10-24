package com.mum.eventmanagement.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "LIKE_FOR_EVENT")
public class Like {

	@Id
	@GeneratedValue
	private Long id;
	@ManyToOne(optional = false)
	@JoinColumn(name = "USER_ID")
	private User user;
	@ManyToOne(optional = false)
	@JoinColumn(name = "EVENT_ID")
	private Event event;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Event getEvent() {
		return event;
	}

	public void setEvent(Event event) {
		this.event = event;
	}

	@Override
	public String toString() {
		return "Like [id=" + id + ", user=" + user + ", event=" + event + "]";
	}

}
