package pk.ssi;

import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.tomcat.util.net.openssl.ciphers.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import pk.ssi.model.User;
import pk.ssi.dao.UserDao;

@Controller
@RequestMapping(value = "/logout")
public class LogoutController {
        
        @RequestMapping(method = RequestMethod.GET)
	public String logoutUser(HttpServletRequest request, HttpServletResponse response) {
                request.getSession().removeAttribute("user");
                if(request.getSession().getAttribute("user") == null){
                    return "logoutPage";
                }else{
                    return "home";
                }
	}
} 