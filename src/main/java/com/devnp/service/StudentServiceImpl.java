package com.devnp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.devnp.dao.StudentDAO;
import com.devnp.to.Student;

@Service("studentService")
public class StudentServiceImpl implements StudentService {
	
	@Autowired
	private StudentDAO studentDAO ;
	
	public void save(Student student) {
		// TODO Auto-generated method stub
		studentDAO.save(student);
	}

	public void update(Student student) {
		// TODO Auto-generated method stub
		studentDAO.update(student);
	}

	public void delete(Integer id) {
		// TODO Auto-generated method stub
		studentDAO.delete(id);
	}

	public Student findById(Integer id) {
		// TODO Auto-generated method stub
		return studentDAO.findById(id);
	}

	public List<Student> findAll() {
		// TODO Auto-generated method stub
		return studentDAO.findAll();
	}

}
