package ph.com.alliance.dao.impl;

import javax.persistence.EntityExistsException;
import javax.persistence.EntityManager;
import javax.persistence.TransactionRequiredException;

import org.springframework.stereotype.Repository;

import ph.com.alliance.dao.ProjectDao;
import ph.com.alliance.entity.Project;

@Repository("projectDao")
public class ProjectDaoImpl implements ProjectDao{

	@Override
	public boolean createProject(EntityManager pEM, Project pProject)
	{
		boolean success = true;
		
		try{
			
			pEM.persist(pProject);
			
		} catch (EntityExistsException ee) {
			// instantiate MyException class here and set custom error codes common to all
			// ie. throw new MyException(<ERROR CODE HERE>, <ERROR MESSAGE HERE>)
			ee.getMessage();
			success = false;
		} catch (IllegalArgumentException iae) {
			// instantiate MyException class here and set custom error codes common to all
			// ie. throw new MyException(<ERROR CODE HERE>, <ERROR MESSAGE HERE>)
			iae.getMessage();
			success = false;
		} catch (TransactionRequiredException trxe) {
			// instantiate MyException class here and set custom error codes common to all
			// ie. throw new MyException(<ERROR CODE HERE>, <ERROR MESSAGE HERE>)
			trxe.getMessage();
			success = false;
		}
		
		return success;
		
	}
	
	@Override
	public Project updateProject(EntityManager pEM, Project pProject)
	{
		Project project = null;
		
		try {
			project = pEM.merge(pProject);
		} catch (IllegalArgumentException iae) {
			iae.getMessage();
		} catch (TransactionRequiredException trxe) {
			trxe.getMessage();
		}
		
		return project;
	}
	
	@Override
	public boolean deleteProject(EntityManager pEM, Project pProject)
	{
		boolean success = true;
		pEM.remove(pProject);
		return success;
	}
	
	@Override
	public Project selectProject(EntityManager pEM, int pProject_id)
	{
		Project project =null;
		
		try {
			
			project = pEM.find(Project.class, pProject_id);
			
		} catch (IllegalArgumentException iae) {
			iae.getMessage();
		}
		
		return project;
	}
}
