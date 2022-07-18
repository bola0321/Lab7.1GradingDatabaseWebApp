package co.grandcircus.studentgrades;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GradeController {
	
	@Autowired
	private GradeRepository repo;
	
	@RequestMapping("/")
	public String homepage() {
		return "home";
	}
	@RequestMapping("/gradeform")
	public String addAGrade() {
	
		return "addGrade";
	}

	@RequestMapping("/gradeconfirmation")
	public String gradeFormConfirmed() {
		
		return "confirmGrade";
	}
		
	}
