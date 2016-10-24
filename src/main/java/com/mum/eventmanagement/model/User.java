package com.mum.eventmanagement.model;

import java.util.List;

import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;

@Entity
public class User {

	@Id
	@GeneratedValue
	private Integer id;

	private String name;

	@Embedded
	private Address address;

	@OneToOne(mappedBy = "user", optional = false, fetch = FetchType.LAZY)
	private Login login;

	@ManyToMany(mappedBy = "approvedMembers", fetch = FetchType.LAZY)
	private List<Event> joinedEvents;

	@ManyToMany(mappedBy = "waitingMembers", fetch = FetchType.LAZY)
	private List<Event> requestedEvents;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Role getRole() {
		return login.role;
	}

	public void setRole(Role role) {
		this.login.role = role;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", email=" + login.getEmail() + ", name=" + name + ", address=" + address + ", role="
				+ login.role + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((login == null) ? 0 : login.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		if (login == null) {
			if (other.login != null)
				return false;
		} else if (!login.equals(other.login))
			return false;
		return true;
	}

}
