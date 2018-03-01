package ph.com.alliance.controller.view;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ph.com.alliance.entity.User;
import ph.com.alliance.service.DBKanbansanUserService;

@Controller
@RequestMapping("/user")
public class UserViewController {
	
	@Autowired
	DBKanbansanUserService userService;
	
    @RequestMapping(value = "/Projects", method = RequestMethod.GET)
    public String viewMessages(HttpServletRequest request, HttpServletResponse response, ModelMap map) {
    	System.out.println("@/request VIEW CONTROLLER CALLED.");
    	//User user = userService.selectUser(request.getParameter("id"));
    	
    	//map.addAttribute("user", user);
        return "/Projects";
    }


}
