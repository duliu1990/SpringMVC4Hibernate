package com.devnp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.devnp.service.StudentService;
import com.devnp.to.Student;

@Controller
public class StudentController {

	@Autowired
	private StudentService studentService ;
	
	@RequestMapping(value = "/")
	public String index(Model model){
		
		List<Student> students = studentService.findAll();
		
		model.addAttribute("students", students);
		
		return  "index";
	}
	
	@RequestMapping("/initAddStudent")
	public ModelAndView initAddStudent(){
		
		return  new ModelAndView("edit", "student", new Student());
	}
	
	@RequestMapping(value="/delStudent/{id}")
	public String delStudent(@PathVariable(value="id") Integer id){
		
		studentService.delete(id);
		
		return "forward:/" ;
	}
	
	@RequestMapping(value="/initEditStudent/{id}")
	public ModelAndView initEditStudent(@PathVariable(value="id") Integer id){
		
		Student student = studentService.findById(id);
		
		return  new ModelAndView("edit", "student", student);
	}
	
	@RequestMapping("/editStudent")
	public String editStudent(Student student){
		
		studentService.update(student);
		
		return "forward:/" ;
	}
	
	@RequestMapping("/addStudent")
	public String addStudent(Student student){
		
		studentService.save(student);
		
		return "forward:/" ;
	}
}
