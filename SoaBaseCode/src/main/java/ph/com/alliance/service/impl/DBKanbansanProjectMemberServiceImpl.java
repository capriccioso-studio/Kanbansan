package ph.com.alliance.service.impl;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.stereotype.Service;

import ph.com.alliance.dao.ProjectMemberDao;
import ph.com.alliance.dao.TaskDao;
import ph.com.alliance.entity.Project_Member;
import ph.com.alliance.entity.Task;
import ph.com.alliance.service.DBKanbansanProjectMemberService;
import ph.com.alliance.service.DBKanbansanTaskService;

@Service("dbKanbansanProjectMemberService")
public class DBKanbansanProjectMemberServiceImpl implements DBKanbansanProjectMemberService {

	@Autowired
	private ProjectMemberDao projectMemberDao;
	
	@Autowired
	private JpaTransactionManager transactionManager;
	
	
	
	@Override
	public boolean createProjectMember(Project_Member pProjectMember) {
		// TODO Auto-generated method stub
		EntityManager em = transactionManager.getEntityManagerFactory().createEntityManager();
		boolean result = false;
		
		em.getTransaction().begin();
		try {
			result = projectMemberDao.createProjectMember(em, pProjectMember);
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
	public Project_Member updateProjectMember(Project_Member pProjectMember) {
		EntityManager em = transactionManager.getEntityManagerFactory().createEntityManager();
		Project_Member result = null;
		
		em.getTransaction().begin();
		
		try {
			result = projectMemberDao.updateProjectMember(em, pProjectMember);
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
	public void deleteProjectMember(Project_Member pProjectMember) {
		EntityManager em = transactionManager.getEntityManagerFactory().createEntityManager();
		projectMemberDao.deleteProjectMember(em, pProjectMember);
		em.getTransaction().commit();
		
	}

	@Override
	public Project_Member selectProjectMember(Project_Member pProjectMember) {
		// TODO Auto-generated method stub
		EntityManager em = transactionManager.getEntityManagerFactory().createEntityManager();
		return projectMemberDao.selectProjectMember(em, pProjectMember.getProject_member_id());
	}

}
