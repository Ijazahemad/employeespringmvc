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
		
		return null;
	}

}
