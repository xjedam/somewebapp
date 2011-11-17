package com.example.somewebapp.service;

import java.util.List;

import com.example.somewebapp.domain.Person;

// Interfejs biznesowy/ logika biznesowa
public interface PersonManager {
	
	public Person addPerson(Person p);
	public List<Person> getAllPersons();
	public void deletePerson(Long personId);
	public void deletePersons(List<Long> personIdList);
	public Person getPerson(Long personId);
	public void updatePerson(Person p);

}
