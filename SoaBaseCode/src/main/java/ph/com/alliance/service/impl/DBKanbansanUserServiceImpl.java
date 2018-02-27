package ph.com.alliance.service.impl;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.stereotype.Service;

import ph.com.alliance.dao.TaskDao;
import ph.com.alliance.dao.UserDao;
import ph.com.alliance.entity.Task;
import ph.com.alliance.entity.User;
import ph.com.alliance.service.DBKanbansanUserService;


public class DBKanbansanUserServiceImpl implements DBKanbansanUserService {

	@Autowired
	private UserDao userDao;
	
	@Autowired
	private JpaTransactionManager transactionManager;
	
	@Override
	public boolean createUser(User pUser)
	{
		EntityManager em = transactionManager.getEntityManagerFactory().createEntityManager();
		boolean result = false;
		
		em.getTransaction().begin();
		try {
			result = userDao.createTask(em, pUser);
			em.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			result = false;
			if (em.getTransaction().isActive()) {
				em.getTransaction().rollback();
			}
		} finally {
			if (em.isOpen()) {
				em.close();
			}
		}
		
		return result;
	}
	
	@Override
	public User updateUser(User pUser)
	{
		EntityManager em = transactionManager.getEntityManagerFactory().createEntityManager();
		User result = null;
		
		em.getTransaction().begin();
		
		try {
			result = userDao.updateUser(em, pUser);
			em.getTransaction().commit();
		} catch (Exception e) {
			e.getMessage();
			if (em.getTransaction().isActive()) {
				em.getTransaction().rollback();
			}
		} finally {
			if (em.isOpen()) {
				em.close();
			}
		}
		
		return result;
	}
	
	@Override
	public int deleteUser(User pUser)
	{
		EntityManager em = transactionManager.getEntityManagerFactory().createEntityManager();
		userDao.deleteUser(em, pUser);
		em.getTransaction().commit();
		
		return 0;
	}
	
}
