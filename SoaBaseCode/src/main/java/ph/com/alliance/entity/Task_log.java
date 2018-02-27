package ph.com.alliance.entity;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Id;


@Entity
@Table(name="Task_log")
public class Task_log implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int task_log_id;
	
	@ManyToOne(cascade= CascadeType.ALL)
	@JoinColumn(name="task_id")
	private Task task_id;
	
	private String status;

	
	public int getTask_log_id() {
		return task_log_id;
	}

	public void setTask_log_id(int task_log_id) {
		this.task_log_id = task_log_id;
	}

	public Task getTask_id() {
		return task_id;
	}

	public void setTask_id(Task task_id) {
		this.task_id = task_id;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	@Override
	public String toString(){
		return "Task_Log {" + "task_log_id = " + task_log_id +
				", task_id = " + task_id + 
				", status = " + status + "}";
				
	}
	
	
}
