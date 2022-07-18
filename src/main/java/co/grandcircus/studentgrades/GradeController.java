package co.grandcircus.studentgrades;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;

@Controller
public class GradeController {
	
	@Autowired
	private GradeRepository repo;
	

	
	@RequestMapping("/")
	public String gradePage(Model model) {
		List<Grade> grades = repo.findAll();
		
		
		model.addAttribute("grades", grades);
		
		return "grades";
	}
	
	
	@RequestMapping("/gradeform")
	public String addAGrade( ) {

		return "addGrade";
	}

	@PostMapping("/gradeconfirmation")
	public String gradeFormConfirmed(@RequestParam String name,
									@RequestParam String type,
									@RequestParam double score,
									@RequestParam double total,
									Model model) {
		
		Grade createGrade = new Grade(null, name, type, score, total);
		repo.save(createGrade);
		
		model.addAttribute("grades",createGrade);
		
		return "confirmGrade";
	}
	
	@RequestMapping("/delete")
	public String deleteGrade(@RequestParam String id) {
		repo.deleteById(id);
		
		return "redirect:/";
		
	}
		
	}
