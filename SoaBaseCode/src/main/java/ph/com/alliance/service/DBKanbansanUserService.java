package ph.com.alliance.service;

import java.util.List;

import ph.com.alliance.entity.User;

public interface DBKanbansanUserService {
	
	public boolean createUser(User pUser);
	
	public User updateUser(User pUser);
	
	public void deleteUser(User pUser);
	
	public User selectUser(User pUser);
	
	public List<User> selectUsers(User pUser);
	
	public List<User> selectAllUsers(User pUser);

	
}
