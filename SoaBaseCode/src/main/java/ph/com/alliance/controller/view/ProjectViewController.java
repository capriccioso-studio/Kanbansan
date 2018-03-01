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
import ph.com.alliance.service.DBKanbansanProjectService;
import ph.com.alliance.service.DBKanbansanUserService;

@Controller
@RequestMapping("/project")
public class ProjectViewController {
	
	@Autowired
	DBKanbansanUserService userService;
	
	@Autowired
	DBKanbansanProjectService projService;
	
	
	
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String viewMessages(HttpServletRequest request, HttpServletResponse response, ModelMap map) {
    	System.out.println("@/request PROJECT CONTROLLER CALLED.");
    	//User user = userService.selectUser(request.getParameter("id"));
    	
    	String projectName = request.getParameter("projName");
    	String projectDesc = request.getParameter("projDesc");
    	
    	Project pProject  = new Project();
    	pProject.setProject_id(generatePrimaryKey());
    	pProject.setProjectName(projectName);
    	pProject.setProjectDescription(projectDesc);
    	
    	projService.createProject(pProject);
    	
    	Project_Member projmember = new Project_Member();
    	projmember.setProject_member_id(generatePrimaryKey());
    	projmember.setUser_id(userService.selectUser(request.getParameter("userid")));
    	
    	
    	
    	//map.addAttribute("user", user);
        return "/Projects";
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