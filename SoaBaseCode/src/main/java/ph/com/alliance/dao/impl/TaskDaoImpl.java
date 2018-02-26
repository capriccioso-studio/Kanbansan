package ph.com.alliance.dao.impl;

import javax.persistence.EntityExistsException;
import javax.persistence.EntityManager;
import javax.persistence.TransactionRequiredException;

import org.springframework.stereotype.Repository;

import ph.com.alliance.dao.TaskDao;
import ph.com.alliance.entity.Project;
import ph.com.alliance.entity.Task;

@Repository("taskDao")
public class TaskDaoImpl implements TaskDao {
	
	@Override
	public boolean createTask(EntityManager pEM, Task pTask)
	{
		boolean success = true;
		
		try{
			
			pEM.persist(pTask);
			
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
	public Task updateTask(EntityManager pEM, Task pTask)
	{
		Task task = null;
		
		try {
			task = pEM.merge(pTask);
		} catch (IllegalArgumentException iae) {
			iae.getMessage();
		} catch (TransactionRequiredException trxe) {
			trxe.getMessage();
		}
		
		return task;
	}
	
	@Override
	public boolean deleteTask(EntityManager pEM, Task pTask)
	{
		boolean success = true;
		try{
			pEM.remove(pTask);
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
	public Task selectTask(EntityManager pEM, int pTask_id)
	{
		Task task =null;
		
		try {
			
			task = pEM.find(Task.class, pTask_id);
			
		} catch (IllegalArgumentException iae) {
			iae.getMessage();
		}
		
		return task;
	}

}
