package ph.com.alliance.service;

//import java.util.List;

import ph.com.alliance.entity.Project;
import ph.com.alliance.entity.Task;

public interface DBKanbansanService {
	
	//Project
	public boolean createProject(Project pProject);
	public Project updateProject(Project pProject);
	public void deleteProject(Project pProject);
	public Project selectProject(Project pProject);
	
	//Task
	public boolean createTask(Task pTask);
	public Task updateTask(Task pTask);
	public void deleteTask(Task pTask);
	public Task selectTask(Task pTask);
	

}
