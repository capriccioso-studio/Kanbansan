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
@Table(name="project_member")
public class Project_Member implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(nullable = false)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int project_member_id;
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="user_id")
	private User user_id;
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="project_id")
	private Project project_id;
	
	
	
	public int getProject_member_id() {
		return project_member_id;
	}

	public void setProject_member_id(int project_member_id) {
		this.project_member_id = project_member_id;
	}

	public User getUser_id() {
		return user_id;
	}

	public void setUser_id(User user_id) {
		this.user_id = user_id;
	}

	public Project getProject_id() {
		return project_id;
	}

	public void setProject_id(Project project_id) {
		this.project_id = project_id;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	private String role;
}
