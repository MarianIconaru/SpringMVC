package com.imc.spring.service;

import java.util.List;

import com.imc.spring.model.Ward;

public interface WardService {
	Ward getWard(Long Id);

	void addWard(Ward ward);

	void updateWard(Ward ward);

	void deleteWard(Long Id);

	List<Ward> getWards();
}
