package ph.com.alliance.service.impl;


import javax.persistence.EntityManager;
//import javax.validation.ConstraintViolationException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.stereotype.Service;

import ph.com.alliance.dao.ProjectDao;
import ph.com.alliance.entity.Project;
//import ph.com.alliance.entity.User;
import ph.com.alliance.service.DBKanbansanProjectService;

@Service("dbKanbansanProjectService")
public class DBKanbansanProjectServiceImpl implements DBKanbansanProjectService{
	
	@Autowired
	private ProjectDao projectDao;
	
	@Autowired
	private JpaTransactionManager transactionManager;
	

	@Override
	public boolean createProject(Project pProject)
	{
		EntityManager em = transactionManager.getEntityManagerFactory().createEntityManager();
		boolean result = false;
		
		em.getTransaction().begin();
		try {
			result = projectDao.createProject(em, pProject);
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
	public Project updateProject(Project pProject)
	{
		EntityManager em = transactionManager.getEntityManagerFactory().createEntityManager();
		Project result = null;
		
		em.getTransaction().begin();
		
		try {
			result = projectDao.updateProject(em, pProject);
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
	public void deleteProject(Project pProject)
	{
		EntityManager em = transactionManager.getEntityManagerFactory().createEntityManager();
		projectDao.deleteProject(em, pProject);
		em.getTransaction().commit();
	}
	
	@Override
	public Project selectProject(Project pProject)
	{
		EntityManager em = transactionManager.getEntityManagerFactory().createEntityManager();
		return projectDao.selectProject(em, pProject.getProject_id());
	}


}
