package ph.com.alliance.dao;

import javax.persistence.EntityManager;

import ph.com.alliance.entity.Comment_Flag;

public interface CommentFlagDao {
	
	public boolean createCommentFlag(EntityManager pEM, Comment_Flag pCommentFlag);
	
	public boolean deleteCommentFlag(EntityManager pEM, Comment_Flag pCommentFlag);

}
