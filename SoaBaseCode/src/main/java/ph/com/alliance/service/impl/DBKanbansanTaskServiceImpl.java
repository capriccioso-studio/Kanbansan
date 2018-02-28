package ph.com.alliance.service.impl;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.stereotype.Service;

import ph.com.alliance.dao.TaskDao;
import ph.com.alliance.entity.Task;
import ph.com.alliance.service.DBKanbansanTaskService;

@Service("dbKanbansanTaskService")
public class DBKanbansanTaskServiceImpl implements DBKanbansanTaskService {

	@Autowired
	private TaskDao taskDao;
	
	@Autowired
	private JpaTransactionManager transactionManager;
	

	@Override
	public boolean createTask(Task pTask)
	{
		EntityManager em = transactionManager.getEntityManagerFactory().createEntityManager();
		boolean result = false;
		
		em.getTransaction().begin();
		try {
			result = taskDao.createTask(em, pTask);
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
	public Task updateTask(Task pTask)
	{
		EntityManager em = transactionManager.getEntityManagerFactory().createEntityManager();
		Task result = null;
		
		em.getTransaction().begin();
		
		try {
			result = taskDao.updateTask(em, pTask);
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
	public void deleteTask(Task pTask)
	{
		EntityManager em = transactionManager.getEntityManagerFactory().createEntityManager();
		taskDao.deleteTask(em, pTask);
		em.getTransaction().commit();
	}
	
	@Override
	public Task selectTask(String pTask)
	{
		EntityManager em = transactionManager.getEntityManagerFactory().createEntityManager();
		return taskDao.selectTask(em, pTask);
	}
}
