package volresa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import vol.metier.dao.PassagerDao;
import vol.metier.dao.ReservationDao;
import vol.metier.model.Passager;
import vol.metier.model.Reservation;

@Controller
@RequestMapping("/passager")
public class PassagerController {

	@Autowired
	private PassagerDao daoPassager;
	
	@Autowired
	private ReservationDao daoReservation;

	@RequestMapping("/list")
	public ModelAndView list() {
		return new ModelAndView("passager/list", "listePassager", daoPassager.findAll());
	}
	
	@RequestMapping("/createPassager")
	public ModelAndView createPassager() {
		return new ModelAndView("passager/edit", "passager", new Passager());
	}
	

	@RequestMapping("/delete")
	public ModelAndView delete(@RequestParam(name = "id", required = true) Long id) {
		Passager pToDel = daoPassager.find(id);
		List<Reservation> lR = pToDel.getReservations();
		if (lR.size() > 0)
			for (Reservation r : lR) 
				daoReservation.delete(r);
		daoPassager.delete(pToDel);
		return new ModelAndView("redirect:list");
	}

	@RequestMapping("/save")
	private ModelAndView savePassager(Passager p) {
		if (p.getId() == null)
			daoPassager.create(p);
		else {
			daoPassager.update(p);
		}
		return new ModelAndView("redirect:list");

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
