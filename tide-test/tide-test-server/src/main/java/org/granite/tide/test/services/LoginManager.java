package org.granite.tide.test.services;

import org.granite.tide.test.domain.model.User;

public interface LoginManager {

	User login(String login, String pass) throws Exception;
	
	String sayHello();

}
