package employeecrudoperationsusingspringmvc.service;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import employeecrudoperationsusingspringmvc.dao.EmployeeRepository;
import employeecrudoperationsusingspringmvc.dto.Employee;

@Service
public class EmployeeServiceImplementation implements EmployeeService{

	@Autowired
	private EmployeeRepository repository;
	
	@Override
	public boolean addEmployee(Employee e) {
		
		//Calculate the age
		
		int yob = Integer.parseInt(e.getDob().substring(0,4));
		
		int curYear = LocalDate.now().getYear();
		
		int age = curYear-yob;
		
		e.setAge(age);
		
		System.out.println(e);	
		
		return repository.insertEmployee(e);
		
		
	}

	@Override
	public List<Employee> displayAllEmployees() {
		
		List<Employee> allEmps = repository.getAllEmployees();
		
		return allEmps;
	}

	@Override
	public Employee searchEmployee(int id) {
		
		Employee emp = repository.getEmployee(id);
		
		return emp;
	}

	@Override
	public boolean updateEmployee(Employee e) {
		
		int yob = Integer.parseInt(e.getDob().substring(0,4));
		
		int curYear = LocalDate.now().getYear();
		
		int age = curYear-yob;
		
		e.setAge(age);
		
		
		return repository.updateEmployeeData(e);
	}

	@Override
	public boolean deleteEmployee(int id) {
		
		return repository.deleteEmployee(id);
	}

	@Override
	public List<Employee> searchEmployee(String name) {
		
		
		return repository.getEmployee(name);
	}

	@Override
	public List<Employee> searchEmployee(double lowerlimit, double upperlimit) {
		
		
		return repository.getAllEmployee(lowerlimit,upperlimit);
	}

	@Override
	public List<Employee> searchEmployeeBasedOnAge(int lowerlimit, int upperlimit) {
	
		return repository.getAllEmployeeBasedOnAge(lowerlimit,upperlimit);
	}

}
