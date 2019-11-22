package com.sandeep.springweb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sandeep.springweb.entity.Student;
import com.sandeep.springweb.service.StudentService;

@Controller
@RequestMapping("/student")
public class StudentController {

	@Autowired
	private StudentService studentService;
	
	@GetMapping("/list")
	public String showStudentList(Model theModel) {
		List<Student> theStudents = studentService.getStudents();				
		theModel.addAttribute("students", theStudents);		
		return "show_student_list";		
	}	
	
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {		
		Student theStudent = new Student();
		
		theModel.addAttribute("student", theStudent);
		
		return "student_form";
	}
	
	@PostMapping("/saveStudent")
	public String saveStudent(@ModelAttribute("student") Student theStudent) {		
		studentService.saveStudent(theStudent);			
		return "redirect:/student/list";
	}
	
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("studentId") int theId,
									Model theModel) {		
		Student theStudent = studentService.getStudent(theId);		
		theModel.addAttribute("student", theStudent);		
		return "student_form";
	}
	
	@GetMapping("/delete")
	public String deleteStudent(@RequestParam("studentId") int theId) {		
		studentService.deleteStudent(theId);		
		return "redirect:/student/list";
	}
	
	@GetMapping("/skillSet")
	public String showSkillSet(Model theModel) {			
		return "skill_set";		
	}	
	
	@GetMapping("/education")
	public String showEducation(Model theModel) {			
		return "education";		
	}	
	
	@GetMapping("/experience")
	public String showExperience(Model theModel) {			
		return "experience";		
	}	
	
	@GetMapping("/connect")
	public String showConnect(Model theModel) {				
		return "connect";		
	}	
}




















