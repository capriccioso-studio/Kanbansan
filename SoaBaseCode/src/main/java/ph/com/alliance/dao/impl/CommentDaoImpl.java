package ph.com.alliance.dao.impl;

import javax.persistence.EntityExistsException;
import javax.persistence.EntityManager;
import javax.persistence.TransactionRequiredException;

import org.springframework.stereotype.Repository;

import ph.com.alliance.dao.CommentDao;
import ph.com.alliance.entity.Comment;


@Repository("commentDao")
public class CommentDaoImpl implements CommentDao {
	
	@Override
	public boolean createComment(EntityManager pEM, Comment pComment)
	{
		boolean success = true;
		
		try{
			
			pEM.persist(pComment);
			
		} catch (EntityExistsException ee) {
			// instantiate MyException class here and set custom error codes common to all
			// ie. throw new MyException(<ERROR CODE HERE>, <ERROR MESSAGE HERE>)
			ee.getMessage();
			success = false;
		} catch (IllegalArgumentException iae) {
			// instantiate MyException class here and set custom error codes common to all
			// ie. throw new MyException(<ERROR CODE HERE>, <ERROR MESSAGE HERE>)
			iae.getMessage();
			success = false;
		} catch (TransactionRequiredException trxe) {
			// instantiate MyException class here and set custom error codes common to all
			// ie. throw new MyException(<ERROR CODE HERE>, <ERROR MESSAGE HERE>)
			trxe.getMessage();
			success = false;
		}
		
		return success;
		
	}
	
	@Override
	public Comment updateComment(EntityManager pEM, Comment pComment)
	{
		Comment comment = null;
		
		try {
			comment = pEM.merge(pComment);
		} catch (IllegalArgumentException iae) {
			iae.getMessage();
		} catch (TransactionRequiredException trxe) {
			trxe.getMessage();
		}
		
		return comment;
	}
	
	@Override
	public int deleteComment(EntityManager pEM, Comment pComment)
	{
		pEM.remove(pComment);
		return 0;
	}
	

}
