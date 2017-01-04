package pk.ssi;


import static java.lang.Math.abs;
import java.util.List;
import java.util.Map;
import java.util.Random;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pk.ssi.dao.AdresDao;
import pk.ssi.dao.RachunekDao;
import pk.ssi.dao.UserDao;
import pk.ssi.model.Adres;
import pk.ssi.model.Rachunek;
import pk.ssi.model.User;


@Controller
@RequestMapping(value = "/createNewAccount")
public class NewAccountController {
 
    @RequestMapping(method = RequestMethod.GET)
    public String processCreateNewAccount(Map<String, Object> model, HttpServletRequest request) {

        User user = (User) request.getSession().getAttribute("user");
        
        RachunekDao rachunekDao = new RachunekDao();
        Rachunek rachunek = new Rachunek();
        int newId = rachunekDao.findNewId();
        rachunek.setIdRachunek(newId + 1);
        Random gen = new Random();
        long randomLong = abs(gen.nextLong());
        rachunek.setNrRachunku(Long.toString(randomLong));
        rachunek.setPesel(user.getPesel());
        rachunek.setSaldo(0.0);
        rachunek.setWaluta("PLN");
        rachunekDao.create(rachunek);
        
        
        try{
            User userToLogin = (User)request.getSession().getAttribute("user");
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