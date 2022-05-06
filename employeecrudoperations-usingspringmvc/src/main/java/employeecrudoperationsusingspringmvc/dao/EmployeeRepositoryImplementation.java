package employeecrudoperationsusingspringmvc.dao;


import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Repository;

import employeecrudoperationsusingspringmvc.dto.Employee;

@Repository
public class EmployeeRepositoryImplementation implements EmployeeRepository {

	private static SessionFactory factory;
	/*private static SessionFactory getSessionFactory()
	{
		Configuration config = new Configuration();
		config.configure();
		if(factory == null)
			factory = config.buildSessionFactory();
		
		return factory;
	}*/
	
	static 
	{
		Configuration config = new Configuration();
		config.configure();
		factory = config.buildSessionFactory();
	}
	
	
	@Override
	public boolean insertEmployee(Employee e) {
		
		boolean flag = false;
		
		/*SessionFactory factory1 = getSessionFactory();
		
		if(factory1 == null)
			System.out.println("null");
		
		
		Session session = factory1.openSession();
	*/	
		Session session = factory.openSession();
		
		Transaction tx = session.beginTransaction();
		
		session.save(e);
		
		try {
			tx.commit();
			flag = true;
		} catch (Exception e2) {
			flag = false;
			tx.rollback();
		}
		
		return flag;
		
	}


	@Override
	public List<Employee> getAllEmployees() {

		Session session = factory.openSession();
		
		Query query = session.createQuery("FROM Employee");
		
		return query.getResultList();
	}


	@Override
	public Employee getEmployee(int id) {
		
		Session session = factory.openSession();
		
		Employee emp = session.get(Employee.class, id);
		
		System.out.println(emp);
		
		session.close();
		
		return emp;
	}


	@Override
	public boolean updateEmployeeData(Employee e) {
		
		boolean flag = false;
		
		Session session = factory.openSession();
		
		session.update(e);
		
		Transaction tx = session.beginTransaction();
		
		try {
			tx.commit();
			flag = true;
		} catch (Exception e2) {
			flag = false;
			tx.rollback();
		}
		
		return flag;
		
	}


	@Override
	public boolean deleteEmployee(int id) {
		
		Session session = factory.openSession();
		
		Transaction tx = session.beginTransaction();
		
		
		session.delete(getEmployee(id));
		
		try {
			
			tx.commit();
			return true;
			
		} catch (Exception e) {
			tx.rollback();
			return false;
		}
		
	}

}
