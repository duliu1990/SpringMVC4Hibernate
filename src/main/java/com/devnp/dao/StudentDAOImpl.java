package com.devnp.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.devnp.to.Student;

@Repository("studentDao")
public class StudentDAOImpl implements StudentDAO {

	@Autowired
	private HibernateTemplate hibernateTemplate ;
	
	
	public StudentDAOImpl(){
		
	}
	
	public void save(Student student) {
		// TODO Auto-generated method stub
		hibernateTemplate.save(student);
	}

	public void update(Student student) {
		// TODO Auto-generated method stub
		hibernateTemplate.update(student);
	}

	public void delete(Integer id) {
		// TODO Auto-generated method stub
		Student student = new Student();
		student.setId(id);
		
		hibernateTemplate.delete(student);
	}

	public Student findById(Integer id) {
		// TODO Auto-generated method stub
		return hibernateTemplate.get(Student.class, id);
	}

	@SuppressWarnings("unchecked")
	public List<Student> findAll() {
		// TODO Auto-generated method stub
		DetachedCriteria detachedCriteria = DetachedCriteria.forClass(Student.class);
		
		return (List<Student>) hibernateTemplate.findByCriteria(detachedCriteria, 0, 100);
	}
	
}
