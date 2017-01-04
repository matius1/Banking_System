package pk.ssi;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import pk.ssi.model.User;
import pk.ssi.model.Rachunek;
import pk.ssi.dao.UserDao;
import pk.ssi.dao.RachunekDao;
import pk.ssi.dao.AdresDao;


@Controller
@RequestMapping(value = "/adminAdres/{idAdres}")
public class AdminAdresController {
 
	@RequestMapping( method=RequestMethod.GET)
	public String getAdres(@PathVariable("idAdres") String idAdres, Map<String, Object> model, HttpServletRequest request) {

                    AdresDao adresDao = new AdresDao();
                    UserDao userDao = new UserDao();
                    List<User>adres = adresDao.getByAdres(idAdres);
                    User user = userDao.getByAdresId(idAdres);
                    model.put("listOfAdres", adres);
                    model.put("user", user);
                    System.out.println(adres);
                    System.out.println(user);
                    return "adminAdres";

	}
 
} 