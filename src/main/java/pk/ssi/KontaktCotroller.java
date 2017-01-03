/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pk.ssi;

import ch.qos.logback.core.CoreConstants;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import pk.ssi.dao.KontaktDao;
import pk.ssi.model.Kontakt;
import pk.ssi.model.User;

/**
 *
 * @author Degus
 */
@Controller
@RequestMapping("/addContactBook")
public class KontaktCotroller {
    
    @RequestMapping(method = RequestMethod.GET)
    public String contactForm(Map<String, Object> model) {
        Kontakt kontaktForm = new Kontakt();
        model.put("kontaktForm", kontaktForm);
        return "addToBook";
    }
    
    @RequestMapping(method = RequestMethod.POST)
    public String kontakt(@ModelAttribute("kontaktForm") Kontakt kontakt,
            Map<String, Object> model, HttpServletRequest request) {
        KontaktDao kd=new KontaktDao();
        User user=(User) request.getSession().getAttribute("user");
        System.out.println(user.getPesel());
        kontakt.setPesel(user.getPesel());
        kd.create(kontakt);
        return "adressBook";
        
    }
    
}
