package employeecrudoperationsusingspringmvc.service;

import java.util.List;

import employeecrudoperationsusingspringmvc.dto.Employee;

public interface EmployeeService {
	
	boolean addEmployee(Employee e);

	List<Employee> displayAllEmployees();

	Employee searchEmployee(int id);
	
	boolean updateEmployee(Employee e);

	boolean deleteEmployee(int id);

	List<Employee> searchEmployee(String name);

	List<Employee> searchEmployee(double lowerlimit, double upperlimit);

	List<Employee> searchEmployeeBasedOnAge(int lowerlimit, int upperlimit);

}
