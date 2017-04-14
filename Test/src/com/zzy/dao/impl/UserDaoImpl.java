package com.zzy.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.zzy.dao.UserDao;
import com.zzy.pojo.User;

@Repository("userDao")
public class UserDaoImpl extends HibernateDaoSupport implements UserDao{
	
	@Autowired
	public void setSessionFactory01(SessionFactory sessionFactory){
		super.setSessionFactory(sessionFactory);
	}
	
	public void insertnewUser(User user) {
		// TODO Auto-generated method stub
		System.out.println("UserDaoImpl.insertnewUser()");
		super.getHibernateTemplate().save(user);
	}

	public List<User> selectAll() {
		// TODO Auto-generated method stub
		System.out.println("UserDaoImpl.selectAll()");
		String hql = "from User u";
		Query query = super.getSession().createQuery(hql);
		
		return query.list();
	}

	public User selectUserByUno(Integer uno) {
		// TODO Auto-generated method stub
		String hql = "from User u where u.uno=?" ;
		Query query = super.getSession().createQuery(hql).setInteger(0, uno);
		List<User> userlist=query.list();
		User user = userlist.get(0);

		System.out.println(user);
		return user;
	}

	
	
}
