package ph.com.alliance.service.impl;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.stereotype.Service;

import ph.com.alliance.dao.TaskLogDao;
import ph.com.alliance.entity.Task_log;
import ph.com.alliance.service.DBKanbansanTaskLogService;

@Service("dbKanbansanTaskLogService")
public class DBKanbansanTaskLogServiceImpl implements DBKanbansanTaskLogService{

	@Autowired
	private TaskLogDao taskLogDao;
	
	@Autowired
	private JpaTransactionManager transactionManager;
	
	@Override
	public boolean createTaskLog(Task_log pTaskLog){
		EntityManager em = transactionManager.getEntityManagerFactory().createEntityManager();
		boolean result = false;
		
		em.getTransaction().begin();
		try {
			result = taskLogDao.createTaskLog(em, pTaskLog);
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
}
