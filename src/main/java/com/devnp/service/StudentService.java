package com.devnp.service;

import java.util.List;

import com.devnp.to.Student;

public interface StudentService {

	public void save(Student student);
	
	public void update(Student student);
	
	public void delete(Integer id);
	
	public Student findById(Integer id);
	
	public List<Student> findAll();
}
