package com.becoderCrudDao;

import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;

import com.becoderCrudEntite.LoginData;

public class LoginImpl {
	@Autowired
  private HibernateTemplate hibernateTemplate;


	/*public LoginData loginuser(String email,  String password) {
		// TODO Auto-generated method stub
		 String sql="from Emp WHERE Email=:email And Password=:password";
		LoginData us = (LoginData)hibernateTemplate.execute(s->{
			Query q =s.createQuery(sql);
			q.setString("em", email);
			q.setString("pwd", password);
			
			return q.uniqueResult();
		});
		return us;
	}
*/
}
