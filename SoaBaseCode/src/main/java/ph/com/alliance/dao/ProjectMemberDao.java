package ph.com.alliance.dao;

import javax.persistence.EntityManager;

import ph.com.alliance.entity.Project_Member;

public interface ProjectMemberDao {

	public boolean createProjectMember(EntityManager pEM, Project_Member pProjectMember);
	
	public Project_Member updateProjectMember(EntityManager pEM, Project_Member pProjectMember);
	
	public boolean deleteProjectMember(EntityManager pEM, Project_Member pProjectMember);
	
	public Project_Member selectProjectMember(EntityManager pEM, String pProjectMember_id);
	
}
