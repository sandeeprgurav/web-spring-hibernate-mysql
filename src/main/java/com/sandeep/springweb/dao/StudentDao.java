package com.sandeep.springweb.dao;

import java.util.List;

import com.sandeep.springweb.entity.Student;

public interface StudentDao {
	public List<Student> getStudents();

	public void saveStudent(Student theStudent);

	public Student getStudent(int theId);

	public void deleteStudent(int theId);
}


