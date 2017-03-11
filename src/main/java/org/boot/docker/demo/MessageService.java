/**
 * 
 */
package org.boot.docker.demo;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Ramakrishna Gutha
 *
 */
@RestController
public class MessageService {
	
	@RequestMapping("/say")
	public String message () {
		return "Hello spring-boot-docker";
	}
}
