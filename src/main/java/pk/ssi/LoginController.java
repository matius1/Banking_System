package pk.ssi;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import pk.ssi.model.User;
import pk.ssi.model.Rachunek;
import pk.ssi.dao.UserDao;
import pk.ssi.dao.RachunekDao;

@Controller
@RequestMapping(value = "/login")
public class LoginController {
 
	@RequestMapping(method = RequestMethod.POST)
	public String login(@ModelAttribute("loginBean") User user, Map<String, Object> model, HttpServletRequest request) {
                UserDao userDao = new UserDao();
                User userToLogin = userDao.getByLogin(user.getLogin(), user.getHaslo());
                request.getSession().setAttribute("user", userToLogin);
                RachunekDao rachunekDao = new RachunekDao();
                List<Rachunek>rachunki = rachunekDao.getByPesel(userToLogin.getPesel());
                model.put("listOfAccount", rachunki);
                System.out.println(rachunki);
		return "home";
	}
 
} 