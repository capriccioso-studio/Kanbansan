package ph.com.alliance.entity;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Id;

@Entity
@Table(name = "comment")
public class Comment implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(nullable = false)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int comment_id;
	
	private String comment;

	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="task_id")
	private Task task_id;
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="project_member_id")
	private Project_Member project_member_id;
	
	
	public int getComment_id() {
		return comment_id;
	}

	public void setComment_id(int comment_id) {
		this.comment_id = comment_id;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public Task getTask_id() {
		return task_id;
	}

	public void setTask_id(Task task_id) {
		this.task_id = task_id;
	}

	public Project_Member getProject_member_id() {
		return project_member_id;
	}

	public void setProject_member_id(Project_Member project_member_id) {
		this.project_member_id = project_member_id;
	}
	
	

}
