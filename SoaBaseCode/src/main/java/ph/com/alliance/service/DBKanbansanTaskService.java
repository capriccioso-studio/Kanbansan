package ph.com.alliance.service;

import ph.com.alliance.entity.Task;

public interface DBKanbansanTaskService {
	
	public boolean createTask(Task pTask);
	
	public Task updateTask(Task pTask);
	
	public void deleteTask(Task pTask);
	
	public Task selectTask(String pTask);

}
