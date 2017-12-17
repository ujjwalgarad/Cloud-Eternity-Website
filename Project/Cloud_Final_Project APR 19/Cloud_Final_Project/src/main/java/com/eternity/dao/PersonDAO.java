package com.eternity.dao;

import org.hibernate.HibernateException;

import com.eternity.pojo.Address;
import com.eternity.pojo.Person;


public class PersonDAO extends DAO{

	public PersonDAO(){
		
	
	}
	public Person create(String firstName, String lastName, String streetName, String city, String zipcode, String state, String country, String email, String telephone)
	{  
            begin();
           
            System.out.println("inside personDAO");
            Person p = new Person();
            Address ad = new Address();
            
            p.setFirstName(firstName);
            p.setLastName(lastName);
            p.setEmail(email);
    		p.setTelephone(telephone);
    		ad.setStreetName(streetName);
    		ad.setCity(city);
    		ad.setZipcode(zipcode);
    		ad.setState(state);
    		ad.setCountry(country);
    		
    		p.setAddress(ad);
            
            
            
            getSession().save(p);
            
            commit();
            return p;
       
    }
	public void addPerson(){
		
		begin();
		Person person = new Person();
		Address address = new Address();
		
		person.setFirstName("Swapnil");
		person.setLastName("Hete");
		//person.setEmail("swapnilhete@gmail.com");
		//person.setTelephone("8573008322");
		//address.setStreetName("32 Clearway Street");
		//address.setCity("Boston");
		//address.setZipcode("02115");
		//address.setState("MA");
		//address.setCountry("USA");
		
		//person.setAddress(address);
		
		getSession().save(person);
		
		commit();
		getSession().close();
		 
		
	}
}
