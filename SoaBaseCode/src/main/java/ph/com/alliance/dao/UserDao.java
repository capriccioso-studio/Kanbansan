package ph.com.alliance.dao;

import java.util.List;

import javax.persistence.EntityManager;

import ph.com.alliance.entity.User;

/**
 * 
 * 
 */
public interface UserDao {
	/**
	 * 
	 * @param puser
	 * @return
	 */
	public boolean createUser(EntityManager pEM, User pUser);
	
	/**
	 * 
	 * @param p_em
	 * @param pUser
	 * @return
	 */
	public User updateUser(EntityManager pEM, User pUser);
	
	/**
	 * 
	 * @param p_em
	 * @param pUser
	 * @return
	 */
	public boolean deleteUser(EntityManager pEM, User pUser);
	
	/**
	 * 
	 * @param p_em
	 * @param pUser
	 * @return
	 */
	public User selectUser(EntityManager pEM, int pUid);
	
	/**
	 * 
	 * @param p_em
	 * @param pKey
	 * @return
	 */
	public List<User> selectUsers(EntityManager pEM, int pKey);
	
	/**
	 * 
	 * @param pEM
	 * @return
	 */
	public List<User> selectAllUsers(EntityManager pEM);
	
}
