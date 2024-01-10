package com.becoderCrudDao;

import java.util.List;

import com.becoderCrudEntite.Emp;

public interface EmpDao {

	public void saveEmp(Emp emp);

	public Emp getEmpById(int id);

	public List<Emp> getAllEmp();

	public void update(Emp emp);

	public void Delele(int id);

	public Emp getCustomer(int theID);
	/* public Emp loginpage(String email,String Password); */

	public void lgData(String email, String password);

	public Emp loginpage(String email, String Password);

	public Emp loginProcess(String email, String password);

	public Emp SearchBar(int id);

	public Emp validate(String email, String password);

	public List<Emp> getAllUser();

	public List<Emp> getDetail(int theID);
}
