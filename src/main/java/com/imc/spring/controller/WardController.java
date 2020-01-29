package com.imc.spring.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.imc.spring.model.Ward;
import com.imc.spring.service.AddressService;
import com.imc.spring.service.WardService;

@Controller

// @SessionAttributes("address")
public class WardController {
	@Autowired
	WardService wardService;
	@Autowired
	AddressService addressService;
	// dependency injection of ward's service layer

	@RequestMapping(value = "/wards", method = RequestMethod.GET)
	public String getWards(ModelMap map) {
		List<Ward> wards = wardService.getWards();
		map.addAttribute("wards", wards);
		return "wards";
	}

	@RequestMapping(value = "newward", method = RequestMethod.GET)
	public String addWard(ModelMap map) {
		Ward ward = new Ward();
		map.addAttribute("ward", ward);
		map.addAttribute("edit", false);
		return "wardregistration";

	}

	@RequestMapping(value = "newward", method = RequestMethod.POST)
	public String addWard2(@Valid Ward ward, BindingResult result, ModelMap map) {
		if (result.hasErrors())
			return "wardregistration";
		wardService.addWard(ward);
		map.addAttribute("success",
				"Ward" + ward.getFirstName() + " " + ward.getLastName() + " was successfully registered!");
		return "registrationsuccess";
	}

	@RequestMapping(value = "editward{Id}", method = RequestMethod.GET)
	public String editWard(@PathVariable Long Id, ModelMap map) {
		Ward ward = wardService.getWard(Id);
		map.addAttribute("ward", ward);
		map.addAttribute("edit", true);
		return "wardregistration";
	}

	@RequestMapping(value = "editward{Id}", method = RequestMethod.POST)
	public String editWard2(@Valid Ward ward, BindingResult result, ModelMap map) {
		if (result.hasErrors())
			return "wardregistration";
		wardService.updateWard(ward);
		map.addAttribute("success", "Ward " + ward.getFirstName() + " " + ward.getLastName() + "(" + ward.getId()
				+ ") was successfully updated!");
		return "registrationsuccess";
	}

	@RequestMapping(value = "deleteward{Id}", method = RequestMethod.GET)
	public String delete(@PathVariable Long Id, ModelMap map) {
		wardService.deleteWard(Id);
		map.addAttribute("success", "Ward was successfully removed!");
		return "registrationsuccess";
	}

}
