/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pk.ssi;

import static java.lang.Math.abs;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import pk.ssi.model.User;
import pk.ssi.model.Adres;
import pk.ssi.model.Rachunek;
import pk.ssi.dao.UserDao;
import pk.ssi.dao.AdresDao;
import pk.ssi.dao.RachunekDao;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping(value = "/register")
public class RegisterController {
 
    @RequestMapping(method = RequestMethod.GET)
    public String viewRegistration(Map<String, Object> model) {
        User userForm = new User();
        Adres adresForm = new Adres();
        model.put("userForm", userForm);
        model.put("adresForm", adresForm);
         
        return "registration";
    }
     
    @RequestMapping(method = RequestMethod.POST)
    public String processRegistration(@ModelAttribute("userForm") User user,
            @ModelAttribute("adresForm") Adres adres,
            Map<String, Object> model) {
        
        UserDao userDao = new UserDao();
        userDao.create(user);
        
        AdresDao adresDao = new AdresDao();
        adresDao.create(adres);
        
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
        
         
        // for testing purpose:
        System.out.println("imie: " + user.getImie());
        System.out.println("nazwisko: " + user.getNazwisko());
        System.out.println("email: " + user.getEmail());
        System.out.println("login: " + user.getLogin());
        System.out.println("haslo: " + user.getHaslo());
        System.out.println("pesel: " + user.getPesel());
        System.out.println("idAdres: " + user.getIdAdres());
        System.out.println("numerTel: " + user.getNumerTel());
        System.out.println("dataUro: " + user.getDataUro());
        
        System.out.println("idAdres: " + adres.getIdAdres());
        System.out.println("ulica: " + adres.getUlica());
        System.out.println("dom: " + adres.getDom());
        System.out.println("mieszkanie: " + adres.getMieszkanie());
        System.out.println("zip: " + adres.getZip());
        System.out.println("zip2: " + adres.getZip2());
        System.out.println("miasto: " + adres.getMiasto());
         
        return "registrationSuccess";
    }
}