package ph.com.alliance.dao;

import javax.persistence.EntityManager;

import ph.com.alliance.entity.Comment;

public interface CommentDao {
	
	public boolean createComment(EntityManager pEM, Comment pComment);
	
	public Comment updateComment(EntityManager pEM, Comment pComment);
	
	public int deleteComment(EntityManager pEM, Comment pComment);

}
