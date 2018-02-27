package ph.com.alliance.controller.view;

import java.text.ParseException;
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
import ph.com.alliance.entity.Task;
import ph.com.alliance.entity.User;
import ph.com.alliance.service.DBKanbansanProjectService;
import ph.com.alliance.service.DBKanbansanTaskService;



@Controller
@RequestMapping("/")
public class TestController {
	
	@Autowired
	DBKanbansanProjectService userDBTransactionService;
	
	
	/*@Autowired
	ProjectMemberDBTransactionService projectMemberDBTransactionService;
	
	@Autowired
	TaskDBTransactionService taskDBTransactionService;
	
	@Autowired
	TaskLogDBTransactionService taskLogDBTransactionService;*/

	/*
    @RequestMapping(method=RequestMethod.GET)
    public String loadMainMenuIndex(HttpServletRequest request, HttpServletResponse response, ModelMap map)
    		throws Exception{
		
    	boolean result = true;
    	
    	String userId = (String) request.getSession().getAttribute("id");
		if(userId != null){
			User user = userDBTransactionService.viewUser(userId);
			if(user==null){
				result = false;
			}else{
				System.out.println(user.getId());
			}
		} else{
			result = false;
		}
		
		if(result){
			return "/projects";
		}else{
			return "/login";
		}

    }
   *//*
    @RequestMapping(value = "register",method=RequestMethod.GET)
    public String viewRegister(HttpServletRequest request, HttpServletResponse response, ModelMap map){
    	
    	boolean result = true;
    	
    	String userId = (String) request.getSession().getAttribute("id");
		if(userId != null){
			User user = userDBTransactionService.viewUser(userId);
			if(user==null){
				result = false;
			}else{
				System.out.println(user.getId());
			}
		} else{
			result = false;
		}
		
		if(result){
			return "/projects";
		}else{
			return "/register";
		}
    }*/
    
    
    @RequestMapping(value = "insert",method=RequestMethod.GET)
    public void insert(HttpServletRequest request, HttpServletResponse response, ModelMap map)
    		throws Exception{
    	
    	Project pProject = new Project();
    	
    	pProject.setProject_id(generatePrimaryKey());
    	pProject.setProjectDescription("Sample Proejct Deptsdsd");
    	pProject.setProjectName("3333");
    	System.out.println(pProject.getProjectName());
    	
    	userDBTransactionService.createProject(pProject);
    	
    	//userDBTransactionService.deleteProject(pProject);
    	
    	
    	
		/*
    	User user1 = new User(1(), "Anna Mae", "Devibar",
				"amdevibar@gmail.com", "amd", "123456");
		User user2 = new User(2(), "Jereco", "Catingub",
				"jerecocatingub216@gmail.com", "jereco", "123456");
		User user3 = new User(3(), "Jeremy", "Santillan",
				"jeremychin24@gmail.com", "jerms", "123456");
		User user4 = new User(4(), "Vinz", "Punay",
				"tidustidy@gmail.com", "punaenae", "123456");
		User user5 = new User(5(),"Hillary","Briones",
				"hillary@gmail.com","lar","123456");
		User user6 = new User(6(),"Carlo","de Leon",
				"carlodeleon@gmail.com","de lion","123456");
		
		userDBTransactionService.createUser(user1);
		userDBTransactionService.createUser(user2);
		userDBTransactionService.createUser(user3);
		userDBTransactionService.createUser(user4);
		userDBTransactionService.createUser(user5);
		userDBTransactionService.createUser(user6);
		
		Project host = new Project(generatePrimaryKey(),
				"Host","Recommender System",currentDateTime(),user1,formatDate("07-30-2017"),formatDate("03-24-2018"));
		Project undivided = new Project(generatePrimaryKey(),
				"Undivided","Anti Driving Application",currentDateTime(),user4,formatDate("07-30-2017"),formatDate("03-24-2018"));
		
		projectDBTransactionService.createProject(host);
		projectDBTransactionService.createProject(undivided);
		
		ProjectMember member1 = new ProjectMember(
				new ProjectMemberId(user1,host),"testing",new Date());
		
		projectMemberDBTransactionService.addMember(member1);
		
		Task task = new Task(generatePrimaryKey(),null,
				"Create Event","event details",currentDateTime().toString(),"03-24-2018","1");
		
		taskDBTransactionService.addTask(task,host.getId());
		
		TaskLog log = new TaskLog(generatePrimaryKey(),"Pending",currentDateTime().toString(),task);
		taskLogDBTransactionService.addTaskLog(log, task.getId());*/
    	

    }
	
	private Date currentDateTime() throws ParseException{
		String pattern = "dd-M-yyyy hh:mm:ss";
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
		String dateTime = simpleDateFormat.format(new Date());

		return simpleDateFormat.parse(dateTime);

	}
	
	private Date formatDate(String date) throws ParseException{
		
		 SimpleDateFormat formater = new SimpleDateFormat("MM-dd-yyyy");
		  Date result = formater.parse(date);
		  
		  return result;
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
