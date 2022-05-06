package employeecrudoperationsusingspringmvc.service;

import java.util.List;

import employeecrudoperationsusingspringmvc.dto.Employee;

public interface EmployeeService {
	
	boolean addEmployee(Employee e);

	List<Employee> displayAllEmployees();

	Employee searchEmployee(int id);
	
	boolean updateEmployee(Employee e);

	boolean deleteEmployee(int id);

}
