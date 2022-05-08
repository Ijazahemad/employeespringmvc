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

	public static Configuration config;
	public static SessionFactory factory;

	static {
		config = new Configuration();
		config.configure();
		factory = config.buildSessionFactory();
	}

	
	@Override
	public boolean insertEmployee(Employee e) {

		boolean flag = false;

		/*
		 * SessionFactory factory1 = getSessionFactory();
		 * 
		 * if(factory1 == null) System.out.println("null");
		 * 
		 * 
		 * Session session = factory1.openSession();
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

	@Override
	public List<Employee> getEmployee(String name) {
		
		Session session = factory.openSession();
		
		String hql = "FROM Employee WHERE name = :name";
		
		Query query = session.createQuery(hql);
		
		query.setParameter("name", name);
		
		List<Employee> allEmps =  query.getResultList();
		
		session.close();
		
		return allEmps;
	}

	@Override
	public List<Employee> getAllEmployee(double lowerlimit, double upperlimit) {
		
		Session session = factory.openSession();
		
		String hql = "FROM Employee WHERE salary between :lowerlimit and :upperlimit";
		
		Query query = session.createQuery(hql);
		
		query.setParameter("lowerlimit", lowerlimit);
		query.setParameter("upperlimit", upperlimit);
		
		List<Employee> allEmps =  query.getResultList();
		return allEmps;
	}

	@Override
	public List<Employee> getAllEmployeeBasedOnAge(int lowerlimit, int upperlimit) {
Session session = factory.openSession();
		
		String hql = "FROM Employee WHERE age between :lowerlimit and :upperlimit";
		
		Query query = session.createQuery(hql);
		
		query.setParameter("lowerlimit", lowerlimit);
		query.setParameter("upperlimit", upperlimit);
		
		List<Employee> allEmps =  query.getResultList();
		return allEmps;
	}

}
