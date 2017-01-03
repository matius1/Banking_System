package pk.ssi;

import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import pk.ssi.model.User;
import pk.ssi.dao.UserDao;

@Controller
@RequestMapping(value = "/login")
public class LoginController {
 
	@RequestMapping(method = RequestMethod.POST)
	public String login(@ModelAttribute("loginBean") User user, Map<String, Object> model, HttpServletRequest request) {
                UserDao userDao = new UserDao();
                User userToLogin = userDao.getByLogin(user.getLogin(), user.getHaslo());
                request.getSession().setAttribute("user", userToLogin);
		return "home";
	}
 
} 