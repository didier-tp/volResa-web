/**
 * 
 */
package volresa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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

	@RequestMapping("/list")
	public ModelAndView list() {
		return new ModelAndView("/client/list", "listeclient", daoClient.findAll());
	}

	@RequestMapping("/delete")
	public ModelAndView delete(@RequestParam(name = "id", required = true) Long id) {
		daoClient.delete(daoClient.find(id));
		return new ModelAndView("redirect:list");
	}
}
