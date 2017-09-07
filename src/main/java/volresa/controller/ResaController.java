package volresa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import vol.metier.dao.ReservationDao;

@RequestMapping("/reservation")
public class ResaController {

	@Autowired
	private ReservationDao resaDao;
	
	
	
}
