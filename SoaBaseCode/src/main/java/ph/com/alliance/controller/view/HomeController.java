package ph.com.alliance.controller.view;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Example controller class that handles request for the application root.
 * 
 *
 */
@Controller
@RequestMapping("/")
public class HomeController {
	
    @RequestMapping(method=RequestMethod.GET)
    public String loadMainMenuIndex(HttpServletRequest request, HttpServletResponse response, ModelMap map){
    	System.out.println("Home VIEW CONTROLLER CALLED.");
		return "/index";
    }

    @RequestMapping(value = "/Register", method = RequestMethod.GET)
    public String viewMessages(HttpServletRequest request, HttpServletResponse response, ModelMap map) {
    	System.out.println("@/request VIEW CONTROLLER CALLED.");
        return "/Register";
    }
}
