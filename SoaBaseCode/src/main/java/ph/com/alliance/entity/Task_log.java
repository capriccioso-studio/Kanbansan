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
	
	
}
