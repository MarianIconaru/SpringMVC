package com.imc.spring.service;

import com.imc.spring.model.Address;

public interface AddressService {
	void addAddress(Address address);

	Address getAddress(Long Id);

	void updateAddress(Address address);
}
