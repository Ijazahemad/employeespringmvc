package employeecrudoperationsusingspringmvc.dao;

import java.util.List;

import employeecrudoperationsusingspringmvc.dto.Employee;

public interface EmployeeRepository {


	boolean insertEmployee(Employee e);

	List<Employee> getAllEmployees();

	Employee getEmployee(int id);

	boolean updateEmployeeData(Employee e);

	boolean deleteEmployee(int id);

	List<Employee> getEmployee(String name);

	List<Employee> getAllEmployee(double lowerlimit, double upperlimit);

	List<Employee> getAllEmployeeBasedOnAge(int lowerlimit, int upperlimit);
}
