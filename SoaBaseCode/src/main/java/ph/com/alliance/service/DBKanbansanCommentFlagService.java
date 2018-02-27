package ph.com.alliance.service;

import ph.com.alliance.entity.Comment_Flag;

public interface DBKanbansanCommentFlagService {
	
	public boolean createCommentFlag(Comment_Flag pCommentFlag);
	
	public void deleteCommentFlag(Comment_Flag pCommentFlag);

}
