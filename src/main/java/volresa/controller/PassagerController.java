package volresa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import vol.metier.dao.PassagerDao;
import vol.metier.model.Passager;

@Controller
@RequestMapping("/passager")
public class PassagerController {

	@Autowired
	private PassagerDao daoPassager;

	@RequestMapping("/list")
	public ModelAndView list() {
		return new ModelAndView("passager/list", "listePassager", daoPassager.findAll());
	}

	@RequestMapping("/delete")
	public ModelAndView delete(@RequestParam(name = "id", required = true) Long id) {
		daoPassager.delete(daoPassager.find(id));
		return new ModelAndView("redirect:list");
	}

	@RequestMapping("/save")
	private ModelAndView savePassager(Passager p) {
		if (p.getId() == null)
			daoPassager.create(p);
		else
			daoPassager.update(p);
		return list();
	}
	
	@RequestMapping("/edit")
	public ModelAndView editPassager(@RequestParam(name = "id", required = true) Long id) {
		ModelAndView modelAndView = new ModelAndView("passager/edit");
		if (id == null) {
			modelAndView.addObject("passager", new Passager());
		} else {
			modelAndView.addObject("passager", daoPassager.find(id));
		}
		return modelAndView;
	}
	

}
