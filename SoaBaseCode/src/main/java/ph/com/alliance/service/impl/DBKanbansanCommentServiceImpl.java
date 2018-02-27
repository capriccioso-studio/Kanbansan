package ph.com.alliance.service.impl;


import javax.persistence.EntityManager;
//import javax.validation.ConstraintViolationException;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.stereotype.Service;




import ph.com.alliance.dao.CommentDao;
import ph.com.alliance.entity.Comment;
import ph.com.alliance.service.DBKanbansanCommentService;

@Service("dbKanbansanCommentService")
public class DBKanbansanCommentServiceImpl implements DBKanbansanCommentService {
	
	@Autowired
	private CommentDao commentDao;
	
	@Autowired
	private JpaTransactionManager transactionManager;
	
	
	@Override
	public boolean createComment(Comment pComment)
	{
		EntityManager em = transactionManager.getEntityManagerFactory().createEntityManager();
		boolean result = false;
		
		em.getTransaction().begin();
		try {
			result = commentDao.createComment(em, pComment);
			em.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			result = false;
			if (em.getTransaction().isActive()) {
				em.getTransaction().rollback();
			}
		} finally {
			if (em.isOpen()) {
				em.close();
			}
		}
		
		return result;
	}
	
	@Override
	public Comment updateComment(Comment pComment)
	{
		EntityManager em = transactionManager.getEntityManagerFactory().createEntityManager();
		Comment result = null;
		
		em.getTransaction().begin();
		
		try {
			result = commentDao.updateComment(em, pComment);
			em.getTransaction().commit();
		} catch (Exception e) {
			e.getMessage();
			if (em.getTransaction().isActive()) {
				em.getTransaction().rollback();
			}
		} finally {
			if (em.isOpen()) {
				em.close();
			}
		}
		
		return result;
	}
	
	@Override
	public void deleteComment(Comment pComment)
	{
		EntityManager em = transactionManager.getEntityManagerFactory().createEntityManager();
		commentDao.deleteComment(em, pComment);
		em.getTransaction().commit();
	}

}
