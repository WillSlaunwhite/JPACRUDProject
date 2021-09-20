package com.skilldistillery.jpacrud.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Player {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	private String position;
	private int number;
	private int age;
	private double height;
	private int weight;
	private int experience;
	private String college;
	
	@Column(name="first_name")
	private String firstName;
	
	@Column(name="last_name")
	private String lastName;
	
	public Player() {}

	public Player(String position, String firstName, String lastName, int number) {
		super();
		this.position = position;
		this.number = number;
		this.firstName = firstName;
		this.lastName = lastName;
	}


	public Player(String position, String firstName, String lastName, int number, int age, int height, int weight, int experience, String college) {
		super();
		this.position = position;
		this.number = number;
		this.age = age;
		this.height = height;
		this.weight = weight;
		this.experience = experience;
		this.college = college;
		this.firstName = firstName;
		this.lastName = lastName;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public double getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	public int getExperience() {
		return experience;
	}

	public void setExperience(int experience) {
		this.experience = experience;
	}

	public String getCollege() {
		return college;
	}

	public void setCollege(String college) {
		this.college = college;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Player [id=").append(id).append(", position=").append(position).append(", number=")
				.append(number).append(", age=").append(age).append(", height=").append(height).append(", weight=")
				.append(weight).append(", experience=").append(experience).append(", college=").append(college)
				.append(", firstName=").append(firstName).append(", lastName=").append(lastName).append("]");
		return builder.toString();
	}

}
