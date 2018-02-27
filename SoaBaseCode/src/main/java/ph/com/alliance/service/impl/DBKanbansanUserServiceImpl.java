package ph.com.alliance.service.impl;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.stereotype.Service;

import ph.com.alliance.dao.TaskDao;
import ph.com.alliance.dao.UserDao;
import ph.com.alliance.entity.Task;
import ph.com.alliance.entity.User;
import ph.com.alliance.service.DBKanbansanUserService;

@Service("dbKanbansanUserService")
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
			result = userDao.createUser(em, pUser);
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
	public boolean deleteUser(User pUser)
	{
		EntityManager em = transactionManager.getEntityManagerFactory().createEntityManager();
		userDao.deleteUser(em, pUser);
		em.getTransaction().commit();
		
		return true;
	}

	@Override
	public User selectUser(User pUser) {
		// TODO Auto-generated method stub
		EntityManager em = transactionManager.getEntityManagerFactory().createEntityManager();
		return userDao.selectUser(em, pUser.getUser_id());
	}

	@Override
	public List<User> selectUsers(User pUser) {
		// TODO Auto-generated method stub
		//EntityManager em = transactionManager.getEntityManagerFactory().createEntityManager();
		//return userDao.selectUsers(em, pUser.getUser_id());
		
		return null;
	}

	@Override
	public List<User> selectAllUsers(User pUser) {
		// TODO Auto-generated method stub
		EntityManager em = transactionManager.getEntityManagerFactory().createEntityManager();
		return userDao.selectAllUsers(em);
		
		//return null;
	}
	
}
