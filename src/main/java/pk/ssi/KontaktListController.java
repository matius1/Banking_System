/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pk.ssi;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pk.ssi.dao.KontaktDao;
import pk.ssi.dao.RachunekDao;
import pk.ssi.model.Kontakt;
import pk.ssi.model.Rachunek;
import pk.ssi.model.Transfer;
import pk.ssi.model.User;

/**
 *
 * @author Degus
 */
@Controller
@RequestMapping("/showContactList")
public class KontaktListController {
    
    @RequestMapping(method = RequestMethod.GET)
    public String showContacts(Map<String, Object> model, HttpServletRequest request) {
        
        KontaktDao kd=new KontaktDao();
        User user=(User) request.getSession().getAttribute("user");
        System.out.println(user.getPesel());
        List<Kontakt>kontakty=kd.getContactsByPesel(user.getPesel());
        model.put("listOfContacts", kontakty);
        System.out.println(kontakty);
        return "adressBook";
    }
    
    @RequestMapping(method = RequestMethod.POST)
    public String showPost(Map<String, Object> model, HttpServletRequest request){
        KontaktDao kd=new KontaktDao();
        User user=(User) request.getSession().getAttribute("user");
        System.out.println(user.getPesel());
        List<Kontakt>kontakty=kd.getContactsByPesel(user.getPesel());
        model.put("listOfContacts", kontakty);
        System.out.println(kontakty);
        return "adressBook";
    }
}
