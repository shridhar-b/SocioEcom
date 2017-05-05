package com.metech.socialmedia.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Product
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	private String description;
	private int fromAge;
	private int toAge;
	private String interest;
	private String marital;
	private double price;
	
	public int getId()
	{
		return id;
	}
	public void setId(int id)
	{
		this.id = id;
	}
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public String getDescription()
	{
		return description;
	}
	public void setDescription(String description)
	{
		this.description = description;
	}
	public int getFromAge()
	{
		return fromAge;
	}
	public void setFromAge(int fromAge)
	{
		this.fromAge = fromAge;
	}
	public int getToAge()
	{
		return toAge;
	}
	public void setToAge(int toAge)
	{
		this.toAge = toAge;
	}
	public String getInterest()
	{
		return interest;
	}
	public void setInterest(String interest)
	{
		this.interest = interest;
	}
	public String getMarital()
	{
		return marital;
	}
	public void setMarital(String marital)
	{
		this.marital = marital;
	}
	public double getPrice()
	{
		return price;
	}
	public void setPrice(double price)
	{
		this.price = price;
	}
	
	
}
