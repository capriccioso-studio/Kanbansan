package ph.com.alliance.dao.impl;

import javax.persistence.EntityExistsException;
import javax.persistence.EntityManager;
import javax.persistence.TransactionRequiredException;

import org.springframework.stereotype.Repository;

import ph.com.alliance.dao.ProjectMemberDao;
import ph.com.alliance.entity.Project;
import ph.com.alliance.entity.Task;
import ph.com.alliance.entity.Project_Member;

@Repository("projectMemberDao")
public class ProjectMemberDaoImpl implements ProjectMemberDao {


	@Override
	public boolean createProjectMember(EntityManager pEM,
			Project_Member pProjectMember) {
		// TODO Auto-generated method stub
		boolean success = true;
		
		try{
			
			pEM.persist(pProjectMember);
			
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
	public Project_Member updateProjectMember(EntityManager pEM,
			Project_Member pProjectMember) {
		Project_Member projectMember = null;
		
		
		try {
			projectMember = pEM.merge(pProjectMember);
		} catch (IllegalArgumentException iae) {
			iae.getMessage();
		} catch (TransactionRequiredException trxe) {
			trxe.getMessage();
		}
		
		return projectMember;
	}

	@Override
	public boolean deleteProjectMember(EntityManager pEM,
			Project_Member pProjectMember) {
		
		boolean success = true;
		
		try{
			pEM.remove(pProjectMember);
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
	public Project_Member selectProjectMember(EntityManager pEM,
			String pProjectMember_id) {
		
		Project_Member projectMember = null;
		
		try {
			
			projectMember = pEM.find(Project_Member.class, pProjectMember_id);
			
		} catch (IllegalArgumentException iae) {
			iae.getMessage();
		}
		
		return projectMember;
	}
}
