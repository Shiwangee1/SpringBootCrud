package com.becoderCrudDao;

import java.io.IOException;
import java.util.List;

import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.becoderCrudEntite.Emp;
import org.hibernate.Session;

@Repository
public class EmpDaoImpl implements EmpDao {

	@Autowired
	private HibernateTemplate hibernatetemplate;
	/* private SessionFactory sessionFactory; */

	@Transactional
	public void saveEmp(Emp emp) {

		hibernatetemplate.saveOrUpdate(emp);

	}

	public Emp getEmpById(int id) {
		// TODO Auto-generated method stub
		Emp emp = hibernatetemplate.get(Emp.class, id);
		return emp;
	}

	public List<Emp> getAllEmp() {
		// TODO Auto-generated method stub
		List<Emp> list = hibernatetemplate.loadAll(Emp.class);
		return list;
	}

//	=============== get  list of user ============
	@Transactional
	public List<Emp> getAllUser() {
		// TODO Auto-generated method stub

		String hql = "FROM Emp  WHERE Role ='User'";
		Session session = hibernatetemplate.getSessionFactory().getCurrentSession();
		Query<Emp> query = session.createQuery(hql, Emp.class);

		List<Emp> users = query.getResultList();

		return users;
	}
//	================ end of user list ====================

	@Transactional
	public void update(Emp emp, int id, CommonsMultipartFile image) throws IOException {
		// TODO Auto-generated method stub
		/* ======================game==================== */
		emp = hibernatetemplate.get(Emp.class, id);
		if (emp != null) {
			if (!image.isEmpty()) {
				emp.getImageBase64();
				emp.setImage(image.getBytes());
				emp.setImageBase64(image.getOriginalFilename());
				System.out.println(emp);
				/* ======================game==================== */
				hibernatetemplate.saveOrUpdate(emp);
			}
		}
	}

	@Transactional
	public void Delele(int id) {
		// TODO Auto-generated method stub
		Emp emp = hibernatetemplate.get(Emp.class, id);
		hibernatetemplate.delete(emp);

	}

	@Transactional
	public Emp getCustomer(int theID) {

		Emp theEmp = hibernatetemplate.get(Emp.class, theID);

//		
		System.out.println("updateUsercurret edit form initilized  " + theEmp.getImageBase64());
		System.out.println("Initilized  " + theEmp.getName());
		System.out.println("Initilized  " + theEmp.getAddress());
		System.out.println("Initilized  " + theEmp.getEmail());
		System.out.println("Initilized  " + theEmp.getRole());
		System.out.println("Initilized  " + theEmp.getId());

		return theEmp;
	}

	public List<Emp> getDetail(int theID) {

		// Emp theEmp = hibernatetemplate.get(Emp.class, theID);

		String hql = "FROM Emp  WHERE id = :theId ";
		Session session = hibernatetemplate.getSessionFactory().getCurrentSession();
		Query query = session.createQuery(hql, Emp.class);
		query.setParameter("theId", theID);

		List<Emp> theEmp = query.getResultList();

		System.out.println("Get details " + theEmp);

		return theEmp;

	}

	/* ===============================Ashish pal======================== */

	@Transactional
	public Emp validate(String email, String password) {
		/* Session currentSession = hibernatetemplate.getCurrentSession(); */

		System.out.println("Email: in validte" + email); // Add this for debugging
		System.out.println("Password:validate " + password); // Add this for debugging

		String hql = "FROM Emp e WHERE e.Email = :email AND e.Password = :password";
		Session session = hibernatetemplate.getSessionFactory().getCurrentSession();
		Query<Emp> query = session.createQuery(hql, Emp.class);
		query.setParameter("email", email);
		query.setParameter("password", password);

		System.out.println("Email: " + email); // Add this for debugging
		System.out.println("Password: " + password); // Add this for debugging

		List<Emp> users = query.getResultList();

		if (!users.isEmpty()) {
			Emp validateUser = users.get(0);
			System.out.println("Validate user method " + validateUser.getRole());
			System.out.println("Validation successful for user: " + validateUser.getEmail());
			return validateUser;
		} else {
			System.out.println("Validation failed for email: " + email);
			return null;
		}
	}

	@Override
	public Emp SearchBar(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void lgData(String email, String password) {
		// TODO Auto-generated method stub

	}

	@Override
	public Emp loginpage(String email, String Password) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Emp loginProcess(String email, String password) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(Emp emp) {
		// TODO Auto-generated method stub

	}

}
