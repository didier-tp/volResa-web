package volresa.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import springMVC2.controller.Eleve;
import springMVC2.controller.Formateur;
import springMVC2.controller.Personne;
import vol.metier.dao.ReservationDao;
import vol.metier.model.Reservation;

@Controller
@RequestMapping("/reservation")
public class ResaController {

	@Autowired
	private ReservationDao resaDao;

	
	@RequestMapping("/list")
	public ModelAndView list() {
		return new ModelAndView("/reservation/list", "liste", resaDao.findAll());
	}
	
	@RequestMapping("/delete")
	public ModelAndView delete(@RequestParam(name="id", required=true) Long id) {
		resaDao.delete(resaDao.find(id));
		return new ModelAndView("redirect:list");
	}
	
	
	@RequestMapping("/edit")
	public ModelAndView edit(@RequestParam(name="id", required=false) Long id) {
		if (id == null) {
			return new ModelAndView("reservation/edit", "uneResa", new Reservation());
		}else {
			return new ModelAndView("reservation/edit", "uneResa", resaDao.find(id));
		}
	}
	
	@RequestMapping("/save")
	public ModelAndView save(@ModelAttribute("uneResa") @Valid Reservation r) {
		if (r.getId()==null) {
			resaDao.create(r);
		}else {
			resaDao.update(r);
		}
		return new ModelAndView("redirect:list");
	}
		
}
