package ph.com.alliance.dao;

//import java.util.List;

import javax.persistence.EntityManager;

import ph.com.alliance.entity.Project;

public interface ProjectDao {
	
	public boolean createProject(EntityManager pEM, Project pProject);
	
	public Project updateProject(EntityManager pEM, Project pProject);
	
	public int deleteProject(EntityManager pEM, Project pProject);
		
	public Project selectProject(EntityManager pEM, int pProject_id);
	
	//Add Members

}
