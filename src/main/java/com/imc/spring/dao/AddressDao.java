package com.imc.spring.dao;

import com.imc.spring.model.Address;

public interface AddressDao {
	void addAddress(Address address);

	Address getAddress(Long id);

	void updateAddress(Address address);
}
