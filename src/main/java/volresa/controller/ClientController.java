/**
 * 
 */
package volresa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import vol.metier.dao.ClientDao;
import vol.metier.model.Client;
import vol.metier.model.ClientEI;
import vol.metier.model.ClientMoral;
import vol.metier.model.ClientPhysique;
import vol.metier.model.TitreMoral;
import vol.metier.model.TitrePhysique;

/**
 * @author ajc
 *
 */
@Controller
@RequestMapping("/client")
public class ClientController {

	@Autowired
	private ClientDao daoClient;

	private ModelAndView formClient(Client c) {
		ModelAndView modelAndView = new ModelAndView("client/edit", "client", c);
		modelAndView.addObject("civilitesMoral", TitreMoral.values());
		modelAndView.addObject("civilitesPhysique", TitrePhysique.values());
		return modelAndView;
	}

	private ModelAndView saveClient(Client c) {
		if (c.getId() == null) {
			daoClient.create(c);
		} else {
			daoClient.update(c);
		}
		return new ModelAndView("redirect:list");
	}

	@RequestMapping("/list")
	public ModelAndView list() {
		return new ModelAndView("/client/list", "listeClient", daoClient.findAll());
	}

	@RequestMapping("/delete")
	public ModelAndView delete(@RequestParam(name = "id", required = true) Long id) {
		daoClient.delete(daoClient.find(id));
		return new ModelAndView("redirect:list");
	}

	@RequestMapping("/edit")
	public ModelAndView edit(@RequestParam(name = "id", required = true) Long id) {
		return formClient(daoClient.find(id));
	}

	@RequestMapping("/createClientEI")
	public ModelAndView createClientEI() {
		return formClient(new ClientEI());
	}

	@RequestMapping("/createClientMoral")
	public ModelAndView createFormateur() {
		return formClient(new ClientMoral());
	}

	@RequestMapping("/createClientPhysique")
	public ModelAndView createClientPhysique() {
		return formClient(new ClientPhysique());
	}

	@RequestMapping("/saveClientEI")
	public ModelAndView saveClientEI(@ModelAttribute ClientEI c) {
		return saveClient(c);
	}

	@RequestMapping("/saveClientMoral")
	public ModelAndView saveClientMoral(@ModelAttribute ClientMoral c) {
		return saveClient(c);
	}

	@RequestMapping("/saveClientPhysique")
	public ModelAndView saveClientPhysique(@ModelAttribute ClientPhysique c) {
		return saveClient(c);
	}

}
