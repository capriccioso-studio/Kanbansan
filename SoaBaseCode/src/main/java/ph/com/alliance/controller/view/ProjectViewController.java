package ph.com.alliance.controller.view;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ph.com.alliance.entity.Project;
import ph.com.alliance.entity.Project_Member;
import ph.com.alliance.entity.User;
import ph.com.alliance.service.DBKanbansanProjectMemberService;
import ph.com.alliance.service.DBKanbansanProjectService;
import ph.com.alliance.service.DBKanbansanUserService;

@Controller
@RequestMapping("/project")
public class ProjectViewController {
	
	@Autowired
	DBKanbansanUserService userService;
	
	@Autowired
	DBKanbansanProjectService projService;
	

	@Autowired
	DBKanbansanProjectMemberService projMemberService;
	
	
	
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addProject(HttpServletRequest request, HttpServletResponse response, ModelMap map) {
    	System.out.println("@/request PROJECT CONTROLLER CALLED.");
    	//User user = userService.selectUser(request.getParameter("id"));
    	
    	System.out.println("Requested persistent " + request.getParameter("userid"));
    	
    	String projectName = request.getParameter("projName");
    	String projectDesc = request.getParameter("projDesc");
    	
    	Project pProject  = new Project();
    	pProject.setProject_id(generatePrimaryKey());
    	pProject.setProjectName(projectName);
    	pProject.setProjectDescription(projectDesc);
    	
    	if(!projService.createProject(pProject))
    		pProject = null;
    	else
    	{
        	Project_Member projmember = new Project_Member();
        	projmember.setProject_member_id("sdsf");
        	//projmember.setUser_id(userService.selectUser(request.getParameter("userid")));
        	//projmember.setRole("PL");
        	//projmember.setProject_id(pProject);
        	
        	//if(!projMemberService.createProjectMember(projmember))
        		//projmember = null;
        	//System.out.println("Project Member " + projmember.getUser_id().getFirstName() + " added to project: " + pProject.getProjectName());
    	}
    	

    	
    	
    	//map.addAttribute("user", user);
        return "redirect:/user/Projects?id=" + request.getParameter("userid");
    }
    
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
    


}