package com.imc.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.imc.spring.dao.AddressDao;
import com.imc.spring.model.Address;

@Service("addressService")
@Transactional
public class AddressServiceImpl implements AddressService {
	@Autowired
	private AddressDao addressDao;

	@Override
	public void addAddress(Address address) {
		addressDao.addAddress(address);
	}

	@Override
	public Address getAddress(Long Id) {
		return addressDao.getAddress(Id);
	}

	@Override
	public void updateAddress(Address address) {
		addressDao.updateAddress(address);
	}
}
