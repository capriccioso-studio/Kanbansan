package ph.com.alliance.dao;

import javax.persistence.EntityManager;

import ph.com.alliance.entity.Task_log;

public interface TaskLogDao {
	
	public boolean createTaskLog(EntityManager pEM, Task_log pTaskLog);
	
}
