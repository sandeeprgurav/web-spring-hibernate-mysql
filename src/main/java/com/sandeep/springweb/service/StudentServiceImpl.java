package com.sandeep.springweb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.sandeep.springweb.dao.StudentDao;
import com.sandeep.springweb.entity.Student;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentDao studentDao;

	
	@Override
	//@Transactional
	public List<Student> getStudents() {
		return studentDao.getStudents();		
	}

	@Override
	//@Transactional
	public void saveStudent(Student theStudent) {
       studentDao.saveStudent(theStudent);
	}

	@Override
	//@Transactional
	public Student getStudent(int theId) {
		return studentDao.getStudent(theId);
	}

	@Override
	//@Transactional
	public void deleteStudent(int theId) {
       studentDao.deleteStudent(theId);
	}

}
