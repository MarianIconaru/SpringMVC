package com.imc.spring.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.imc.spring.model.Address;

@Repository("addressDao")
public class AddressDaoImpl implements AddressDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addAddress(Address address) {
		sessionFactory.getCurrentSession().save(address);
	}

	@Override
	public Address getAddress(Long Id) {
		Address address = (Address) sessionFactory.getCurrentSession().get(Address.class, Id);
		return address;
	}

	@Override
	public void updateAddress(Address address) {
		Address entity = getAddress(address.getId());
		if (entity != null) {
			entity.setId(address.getId());
			entity.setStreet(address.getStreet());
			entity.setPostal_code(address.getPostal_code());
			entity.setHouseNumber(address.getHouseNumber());
			entity.setApartmentNumber(address.getApartmentNumber());
			entity.setCity(address.getCity());
			entity.setCity(address.getCountry());
		}
		sessionFactory.getCurrentSession().update(entity);
	}
}
