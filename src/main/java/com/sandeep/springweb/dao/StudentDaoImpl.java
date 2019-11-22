package com.sandeep.springweb.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sandeep.springweb.entity.Student;

@Repository
public class StudentDaoImpl implements StudentDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override	
	public List<Student> getStudents() {

		Session currentSession = sessionFactory.getCurrentSession();
		Transaction transaction = currentSession.beginTransaction();
		TypedQuery<Student> theQuery = currentSession.createQuery("from Student",Student.class);
		
		List<Student> students = theQuery.getResultList();
		
		transaction.commit();
		currentSession.close();	
		return students;
	}

	@Override
	public void saveStudent(Student theStudent) {		
		Session currentSession = sessionFactory.getCurrentSession();
		Transaction transaction = currentSession.beginTransaction();
		currentSession.saveOrUpdate(theStudent);
		transaction.commit();
		currentSession.close();		
	}

	@Override
	public Student getStudent(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Transaction transaction = currentSession.beginTransaction();
		Student theStudent = currentSession.get(Student.class, theId);
		transaction.commit();
		currentSession.close();
		return theStudent;
	}
	
	@Override
	public void deleteStudent(int theId) {		
		Session currentSession = sessionFactory.getCurrentSession();
		Transaction transaction = currentSession.beginTransaction();
		Query theQuery = 
				currentSession.createQuery("delete from Student where id=:studentId");
		theQuery.setParameter("studentId", theId);
		
		theQuery.executeUpdate();
		transaction.commit();
		currentSession.close();		
	}
	
}