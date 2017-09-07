/**
 * 
 */
package volresa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import vol.metier.dao.ClientDao;

/**
 * @author ajc
 *
 */
@Controller
@RequestMapping("/client")
public class ClientController {
	@Autowired
	private ClientDao daoClient;

}
