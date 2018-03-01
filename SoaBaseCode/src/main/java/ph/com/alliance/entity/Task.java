package ph.com.alliance.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
//import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Id;

@Entity
@Table(name="task")
public class Task implements Serializable {
	
	
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(nullable = false)
	private String task_id;
	
	private String taskName;
	private String taskDescription;
	private String taskStatus;
	private String taskPriority;
	
	//No Due date
	//No timestamp
	

//Foreign Keys
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="parent_task_id")
	private Task parent_task;

	@ManyToOne
	@JoinColumn(name="project_id", nullable = false)
	private Project project_id;
	
	@ManyToOne
	@JoinColumn(name="project_member_id")
	private Project_Member assignedMember;
	
	
	
	public Project_Member getAssignedMember() {
		return assignedMember;
	}

	public void setAssignedMember(Project_Member assignedMember) {
		
		this.assignedMember = assignedMember;
	}

	//Constructors
	public String getTask_id() {
		return task_id;
	}

	public void setTask_id(String task_id) {
		this.task_id = task_id;
	}

	public String getTaskName() {
		return taskName;
	}

	public void setTaskName(String taskName) {
		this.taskName = taskName;
	}

	public String getTaskDescription() {
		return taskDescription;
	}

	public void setTaskDescription(String taskDescription) {
		this.taskDescription = taskDescription;
	}

	public String getTaskStatus() {
		return taskStatus;
	}

	public void setTaskStatus(String taskStatus) {
		this.taskStatus = taskStatus;
	}

	public String getTaskPriority() {
		return taskPriority;
	}

	public void setTaskPriority(String taskPriority) {
		this.taskPriority = taskPriority;
	}

	public Project getProject_id() {
		return project_id;
	}

	public void setProject(Project project_id) {
		this.project_id = project_id;
	}
	
	public Task getParent_task_id() {
		return parent_task;
	}

	public void setParent_task_id(Task parent_task_id) {
		this.parent_task = parent_task_id;
	}


}
