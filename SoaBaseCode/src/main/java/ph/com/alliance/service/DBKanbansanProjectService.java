package ph.com.alliance.service;

//import java.util.List;

import ph.com.alliance.entity.Project;

public interface DBKanbansanProjectService {
	
	public boolean createProject(Project pProject);
	
	public Project updateProject(Project pProject);
	
	public void deleteProject(Project pProject);
	
	public Project selectProject(Project pProject);
	
}