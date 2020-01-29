package com.imc.spring.dao;

import com.imc.spring.model.Ambulance;

public interface AmbulanceDao {
	void addAmbulance(Ambulance ambulance);

	Ambulance getAmbulance(Long Id);

	void updateAmbulance(Ambulance ambulance);
}
