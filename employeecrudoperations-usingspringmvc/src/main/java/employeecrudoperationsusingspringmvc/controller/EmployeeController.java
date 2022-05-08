package employeecrudoperationsusingspringmvc.controller;

import java.util.List;

import javax.jws.WebParam.Mode;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import employeecrudoperationsusingspringmvc.dto.Employee;
import employeecrudoperationsusingspringmvc.service.EmployeeService;

@Controller
@RequestMapping("/employee")
public class EmployeeController {

	@Autowired
	private EmployeeService service;

	@RequestMapping("/index")
	public String getIndexPage() {
		return "index";

	}

	@RequestMapping(path = "/addEmployee", method = RequestMethod.GET)
	public String getAddFormPage() {

		return "addEmployeeForm";

	}

	@RequestMapping(path = "/addemp", method = RequestMethod.POST)
	public String addEmployee(Employee e, Model myModel) {

		System.out.println(e);

		boolean isInserted = service.addEmployee(e);

		/*
		 * String msg = "";
		 * 
		 * if(isInserted) msg = "Inserted"; else msg = "Not Inserted";;
		 * 
		 * myModel.addAttribute("message",msg);
		 */
		if (isInserted)
			return "redirect:/employee/displayAll";
		else
			return "redirect:/employee/addEmployeeForm";
	}

	@RequestMapping(path = "/displayAll", method = RequestMethod.GET)
	public String displayAllEmployees(Model myModel) {

		List<Employee> allEmps = service.displayAllEmployees();

		myModel.addAttribute("allEmployees", allEmps);

		return "displayAll";

	}

	@RequestMapping(path = "/edit/{id}", method = RequestMethod.GET)
	public String getEditPage(@PathVariable("id") int id, Model myModel) {

		System.out.println(id);

		Employee emp = service.searchEmployee(id);

		myModel.addAttribute("emp", emp);

		return "editPage";

	}

	@RequestMapping(path = "/update", method = RequestMethod.POST)
	public String updateEmployee(Employee e, Model myModel) {

		System.out.println(e);

		service.updateEmployee(e);

		/*
		 * String msg = "";
		 * 
		 * if(isUpdated) msg = "Updated !!"; else msg = "Not Updated";
		 * 
		 * myModel.addAttribute("message",msg);
		 */

		return "redirect:/employee/displayAll";
	}

	@RequestMapping(path = "/delete/{id}", method = RequestMethod.GET)
	public String deleteEmployee(@PathVariable("id") int id) {

		service.deleteEmployee(id);

		return "redirect:/employee/displayAll";
	}

	@RequestMapping("/searchBasedOnId")
	public String getSearchBasedOnIdPage() {

		return "searchBasedOnId";
	}

	@RequestMapping(path = "/searchId", method = RequestMethod.GET)
	public String getEmployee(@RequestParam("id") int id, Model myModel) {

		Employee emp = service.searchEmployee(id);
		System.out.println(emp);

		myModel.addAttribute("employee", emp);

		return "searchedEmployeeDetails";

	}

	@RequestMapping("/searchBasedOnName")
	public String getSearchBasedOnNamePage() {
		return "searchBasedOnName";
	}

	@RequestMapping(path = "/searchName")
	public String getEmployee(@RequestParam("name") String name, Model myModel) {

		List<Employee> allEmps = service.searchEmployee(name);

		myModel.addAttribute("allEmployees", allEmps);

		return "searchedEmployeesDetails";
	}

	@RequestMapping(path = "/searchBasedOnSalaryRange")
	public String getSearchBasedOnSalaryRange() {
		return "searchBasedOnSalaryRange";

	}

	@RequestMapping(path = "/searchRange")
	public String getEmployee(@RequestParam("lowerlimit") double lowerlimit,
			@RequestParam("upperlimit") double upperlimit,Model myModel) {

		List<Employee> allEmps = service.searchEmployee(lowerlimit,upperlimit);

		myModel.addAttribute("allEmployees", allEmps);

		return "searchedEmployeesDetails";
	}
	
	@RequestMapping(path = "/searchBasedOnAgeRange")
	public String getSearchBasedOnAgeRange() {
		return "searchBasedOnAgeRange";

	}
	
	@RequestMapping(path = "/searchRangeAge")
	public String getEmployee(@RequestParam("lowerlimit") int lowerlimit,
			@RequestParam("upperlimit") int upperlimit,Model myModel) {

		List<Employee> allEmps = service.searchEmployeeBasedOnAge(lowerlimit,upperlimit);

		myModel.addAttribute("allEmployees", allEmps);

		return "searchedEmployeesDetails";
	}

}
