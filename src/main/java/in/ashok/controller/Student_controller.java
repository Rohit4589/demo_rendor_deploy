package in.ashok.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import in.ashok.student;
import jakarta.annotation.PostConstruct;
import jakarta.validation.Valid;

@Controller
public class Student_controller {

	@GetMapping("/")
	public String getRequest(Model model)
	{
		student obj=new student();
		model.addAttribute("modelobj",obj);
		return "index";
	}
	
	
	@PostMapping("/sucess")
	public String HandleRequest( @Valid @ModelAttribute("modelobj") student stdobj,BindingResult result,Model model) 
	{
	    if (result.hasErrors()) {
	        // stdobj (with errors) is already in the model under "modelobj"
	        return "index";
	    }
	    // on success you can override/add other attrs:
	    model.addAttribute("msg", "working properly");
	    return "sucess";
	}


}
