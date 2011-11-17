package com.example.somewebapp.domain;

public class Person {
	
	private Long id;
	private String name = "unknown";
	private int yob = 1900;
	
	public Person() {
	}

	public Person(String name, int yob) {
		this.name = name;
		this.yob = yob;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getYob() {
		return yob;
	}
	public void setYob(int yob) {
		this.yob = yob;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return this.name + " " + this.yob;
	}
}
