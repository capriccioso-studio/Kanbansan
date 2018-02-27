package ph.com.alliance.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;
import javax.persistence.Id;

@Entity
@Table(name="project")
public class Project implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(nullable = false)
	private String project_id;
	
	private String projectName;
	private String projectDescription;
	
	//Timestamp of date created
	
	public String getProject_id() {
		return project_id;
	}

	public void setProject_id(String project_id) {
		this.project_id = project_id;
	}

	public String getProjectName()
	{ return projectName; }
	
	public void setProjectName(String projectName)
	{ this.projectName = projectName; }
	
	public String getProjectDescription()
	{ return projectDescription;}
	
	public void setProjectDescription(String projectDescription)
	{ this.projectDescription = projectDescription;}
	
	@Override
	public String toString(){
		return "Project {" + "project_id = " + project_id +
				", projectName = " + projectName + 
				", projectDescription = " + projectDescription + "}";
				
	}
}
