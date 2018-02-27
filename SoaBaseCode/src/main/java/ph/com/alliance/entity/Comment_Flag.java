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
@Table(name= "comment_flag")
public class Comment_Flag implements Serializable{
	
	private static final long serialVersionUiD = 1L;
	
	@Id
	@Column(nullable=false)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int flag_id;
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="comment_id")
	private Comment comment_id;
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="project_member_id")
	private Project_Member project_member_id;
	
	public int getFlag_id() {
		return flag_id;
	}

	public void setFlag_id(int flag_id) {
		this.flag_id = flag_id;
	}

	public Comment getComment_id() {
		return comment_id;
	}

	public void setComment_id(Comment comment_id) {
		this.comment_id = comment_id;
	}

	public Project_Member getProject_member_id() {
		return project_member_id;
	}

	public void setProject_member_id(Project_Member project_member_id) {
		this.project_member_id = project_member_id;
	}


}
