package com.green.cinemabooking.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import com.green.cinemabooking.entities.Role;
import com.green.cinemabooking.service.UserService;

@Component
public class UserRoleConverter implements Converter<Object, Role> {

	static final Logger logger = LoggerFactory.getLogger(UserRoleConverter.class);

	@Autowired
	private UserService userService;

	public Role convert(Object element) {
		Integer id = Integer.parseInt((String) element);
		Role role = userService.getRoleById(id);
		logger.info("Role : {}", role);
		return role;
	}
}
