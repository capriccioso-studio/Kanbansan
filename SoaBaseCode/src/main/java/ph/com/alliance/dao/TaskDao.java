package ph.com.alliance.dao;

import javax.persistence.EntityManager;

import ph.com.alliance.entity.Task;

public interface TaskDao {
	
	public boolean createTask(EntityManager pEM, Task pTask);
	
	public Task updateTask(EntityManager pEM, Task pTask);
	
	public boolean deleteTask(EntityManager pEM, Task pTask);
	
	public Task selectTask(EntityManager pEM, String pTask_id);

}
