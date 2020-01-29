package com.imc.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.imc.spring.dao.WardDao;
import com.imc.spring.model.Ward;

@Service("wardService")
@Transactional
public class WardServiceImpl implements WardService {

	@Autowired
	private WardDao wardDao;

	@Override
	public Ward getWard(Long Id) {

		return wardDao.getWard(Id);
	}

	@Override
	public void addWard(Ward ward) {
		wardDao.addWard(ward);
	}

	@Override
	public void updateWard(Ward ward) {
		wardDao.updateWard(ward);

	}

	@Override
	public void deleteWard(Long Id) {
		wardDao.deleteWard(Id);
	}

	@Override
	public List<Ward> getWards() {
		return wardDao.getWards();
	}

}
