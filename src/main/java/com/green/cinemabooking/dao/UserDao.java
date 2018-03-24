package com.green.cinemabooking.dao;

import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.green.cinemabooking.entities.User;

@Repository
public class UserDao extends AbstractDao<String, User> {

}
