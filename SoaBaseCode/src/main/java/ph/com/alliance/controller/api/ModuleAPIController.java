package ph.com.alliance.controller.api;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dozer.DozerBeanMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import ph.com.alliance.entity.Task;
import ph.com.alliance.entity.User;
import ph.com.alliance.model.UserModel;
import ph.com.alliance.service.DBKanbansanProjectMemberService;
import ph.com.alliance.service.DBKanbansanProjectService;
import ph.com.alliance.service.DBKanbansanTaskService;
import ph.com.alliance.service.DBKanbansanUserService;

/**
 * Controller class used to hadle api requests.
 * All requests that falls through /api/* servlet mapping goes through here.
 * 
 */
@Controller
public class ModuleAPIController {
	@Autowired
	DBKanbansanUserService	userService;
	
	@Autowired
	DBKanbansanProjectMemberService memberService;
	
	@Autowired
	DBKanbansanTaskService taskService;
	
	@Autowired
	DBKanbansanProjectService projectService;
	
	@Autowired
	DozerBeanMapper dozerBeanMapper;
	
	/**
	 * 
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 */
    @RequestMapping(value = "/saveUser", method = RequestMethod.POST)
    public String saveUser(HttpServletRequest request, HttpServletResponse response, ModelMap map){
    	User pUser = new User();
    	
    	pUser.setUser_id(request.getParameter("user_id"));
    	pUser.setFirstName(request.getParameter("firstName"));
    	pUser.setLastName(request.getParameter("lastName"));
    	pUser.setEmail(request.getParameter("email"));
    	pUser.setPassword(request.getParameter("password"));
    	
    	
    	if(!userService.createUser(pUser))
    		pUser = null;
    	System.out.println("User " + pUser.getFirstName() + " registered");
    	/*if(!dbSvc.createUser(this.convertToEntity(u))) {
    		u = null;
    	}*/
    	
    	
    	
    	return "redirect:user/testProjects?id="+pUser.getUser_id();
    }
    
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(HttpServletRequest request, HttpServletResponse response, ModelMap map)
    {
    	User pUser = new User();
    	pUser = userService.selectUser(request.getParameter("userName"));

		if(pUser != null && pUser.getPassword().equals(request.getParameter("password")))
		{
			System.out.println("User found");
			return "redirect:user/testProjects?id=" + pUser.getUser_id();
		}
		else
		{
	    	System.out.println("User not found");
	    	return "redirect:/";
		}
    	
    		
    }
    
    @RequestMapping(value = "/logout", method = RequestMethod.POST)
    public String logout(HttpServletRequest request, HttpServletResponse response, ModelMap map)
    {
    	
		return "redirect:/";
    }
    
    @RequestMapping(value = "/saveTask", method = RequestMethod.POST)
    public String saveTask(HttpServletRequest request, HttpServletResponse response, ModelMap map){
    	Task pTask = new Task();
    	
    	pTask.setTask_id(generatePrimaryKey());
    	pTask.setTaskName(request.getParameter("taskName"));
    	pTask.setTaskDescription(request.getParameter("taskDescription"));
    	pTask.setProject(projectService.selectProject("1"));

    		if(memberService.selectProjectMember(request.getParameter("assigned")) != null)
    		{
    			pTask.setAssignedMember(memberService.selectProjectMember(request.getParameter("assigned")));
    		}
    		else
    			pTask.setAssignedMember(null);
    		
    		
    		if(!taskService.createTask(pTask))
        		pTask = null;
    	
    		System.out.println("@SaveTask " + pTask.getTaskName() + " " +  pTask.getTaskDescription() + " " + request.getParameter("redirect"));
    	/*if(!dbSvc.createUser(this.convertToEntity(u))) {
    		u = null;
    	}*/
    	return "redirect:user/testProjects?id=" + request.getParameter("redirect");
    }
    /**
     * 
     * @param uid
     * @return
     
    @RequestMapping(value = "/searchUser/{uid}", method = RequestMethod.GET)
    @ResponseBody
    public UserModel searchUser(@PathVariable("uid") int uid) {
    	User u = new User();
    	
    	u.setUser_id(uid);
    	
    	return convertToModel(dbSvc.selectUser(u));
    }
    
    /**
     * 
     * @return
     
    @RequestMapping(value = "/searchAllUsers", method = RequestMethod.GET)
    @ResponseBody
    public List<UserModel> searchAllUsers() {
    	List<User> userList = dbSvc.selectAllUsers();
    	List<UserModel> userModelList = new ArrayList<UserModel>();
    	
    	for(User u : userList) {
    		userModelList.add(convertToModel(u));
    	}
    	 	
    	return userModelList;
    }	
    
    /**
     * This is a sample object mapper.
     * Entity to model mapping can be handled by the class constructor itself, or
     * see convertToEntity function for another type of mapping.
     * 
     * @param pUser
     * @return UserModel
     */
    
	private String generatePrimaryKey() {
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MMddhhmmss");
		String dateAsString = simpleDateFormat.format(new Date());
		Random random = new Random();
		String randomString = "";
		for (int i = 0; i < 3; i++) {
			randomString += random.nextInt(9);
		}
		return dateAsString + randomString;

	}
    
    private UserModel convertToModel (User pUser) { 	
    	UserModel userModel = null;
    	
    	if (pUser != null) {
    		userModel = dozerBeanMapper.map(pUser, UserModel.class);
    	} 
    	
    	return userModel;
    }
    
    /**
     * This is a sample object mapper.
     * Model to entity mapping can be explicitly done via setters, or
     * see convertToModel function for mapping using constructor
     * 
     * @param pUserModel
     * @return
     */
    private User convertToEntity (UserModel pUserModel) {
    	User u = null;
    	
    	if (pUserModel != null) {
    		u = dozerBeanMapper.map(pUserModel, User.class);
    	}
    	
    	return u;
    }
}
