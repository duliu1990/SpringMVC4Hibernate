package com.devnp.dao;

import java.util.List;

import com.devnp.to.Student;

public interface StudentDAO {

	public void save(Student student);
	
	public void update(Student student);
	
	public void delete(Integer id);
	
	public Student findById(Integer id);
	
	public List<Student> findAll();
}
