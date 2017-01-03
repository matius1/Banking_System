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
@RequestMapping(value = "/home")
public class HomeController {
 
	@RequestMapping(method = RequestMethod.GET)
	public String login(@ModelAttribute("loginBean") User user, Map<String, Object> model, HttpServletRequest request) {
                try{
                    User userToLogin = (User)request.getSession().getAttribute("user");
                    RachunekDao rachunekDao = new RachunekDao();
                    List<Rachunek>rachunki = rachunekDao.getByPesel(userToLogin.getPesel());
                    model.put("listOfAccount", rachunki);
                    System.out.println(rachunki);
                    return "home";
                }
                catch(Exception e){
                    return "loginPage";
                }
	}
 
} 