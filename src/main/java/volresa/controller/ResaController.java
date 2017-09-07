package volresa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import vol.metier.dao.ReservationDao;

@Controller
@RequestMapping("/reservation")
public class ResaController {

	@Autowired
	private ReservationDao resaDao;
	
	@RequestMapping("/list")
	public ModelAndView list() {
		return new ModelAndView("/reservation/list", "liste", resaDao.findAll());
	}
	
	
	
}
