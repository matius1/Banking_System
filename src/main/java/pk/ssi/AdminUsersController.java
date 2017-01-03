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
@RequestMapping(value = "/admin")
public class AdminUsersController {
 
	@RequestMapping(method = RequestMethod.GET)
	public String login(@ModelAttribute("loginBean") User user, Map<String, Object> model, HttpServletRequest request) {
                try{
                    UserDao userDao = new UserDao();
                    List<User>uzytkownicy = userDao.getUsers();
                    model.put("listOfUsers", uzytkownicy);
                    System.out.println(uzytkownicy);
                    return "adminPage";
                }
                catch(Exception e){
                    return "loginPage";
                }
	}
 
} 