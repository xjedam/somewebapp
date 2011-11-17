package com.example.somewebapp.service;

import java.util.ArrayList;
import java.util.List;

import com.example.somewebapp.domain.Person;

public class PersonManagerInMermory implements PersonManager {
	private static Long nextId = 1l;
	private List<Person> db = new ArrayList<Person>();

	
	@Override
	public Person addPerson(Person p) {
		Person nP = new Person(p.getName(), p.getYob());
		nP.setId(nextId);
		nextId++;
		db.add(nP);
		return nP;
	}

	@Override
	public List<Person> getAllPersons() {
		return db;
	}
	
	@Override
	public void deletePerson(Long personId) {
		Person p = getPerson(personId);
		if(p != null)
			db.remove(p);
	}

	@Override
	public void deletePersons(List<Long> personIdList)
	{
		for(Long id : personIdList)
		{
			Person p = getPerson(id);
			if(p != null)
				db.remove(p);
		}
		
	}
	
	@Override
	public Person getPerson(Long personId) {
		for(Person p: db)
		{
			if(p.getId().equals(personId))
			{
				return p;
			}
		}
		return null;		
	}

	@Override
	public void updatePerson(Person p)
	{
		Person pa = getPerson(p.getId());
		pa.setName(p.getName());
		pa.setYob(p.getYob());
		
	}

}
