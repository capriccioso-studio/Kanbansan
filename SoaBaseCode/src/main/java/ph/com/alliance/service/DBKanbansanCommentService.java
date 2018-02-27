package ph.com.alliance.service;

import ph.com.alliance.entity.Comment;

public interface DBKanbansanCommentService {

	public boolean createComment(Comment pComment);
	
	public Comment updateComment(Comment pComment);
	
	public void deleteComment(Comment pComment);
}
