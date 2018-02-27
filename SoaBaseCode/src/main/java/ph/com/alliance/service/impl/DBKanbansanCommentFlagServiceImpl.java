package ph.com.alliance.service.impl;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.stereotype.Service;

import ph.com.alliance.dao.CommentFlagDao;
import ph.com.alliance.dao.TaskDao;
import ph.com.alliance.entity.Comment_Flag;
import ph.com.alliance.service.DBKanbansanCommentFlagService;

@Service("dbKanbansanCommentFlagService")
public class DBKanbansanCommentFlagServiceImpl implements DBKanbansanCommentFlagService {
	
	@Autowired
	private CommentFlagDao commentFlagDao;
	
	@Autowired
	private JpaTransactionManager transactionManager;

	@Override
	public boolean createCommentFlag(Comment_Flag pCommentFlag) {
		EntityManager em = transactionManager.getEntityManagerFactory().createEntityManager();
		boolean result = false;
		
		em.getTransaction().begin();
		try {
			result = commentFlagDao.createCommentFlag(em, pCommentFlag);
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
	public void deleteCommentFlag(Comment_Flag pCommentFlag) {
		EntityManager em = transactionManager.getEntityManagerFactory().createEntityManager();
		commentFlagDao.deleteCommentFlag(em, pCommentFlag);
		em.getTransaction().commit();
	}
	

}
