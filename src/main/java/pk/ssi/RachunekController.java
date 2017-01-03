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
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pk.ssi.dao.RachunekDao;
import pk.ssi.dao.TransferDao;
import pk.ssi.model.Rachunek;
import pk.ssi.model.Transfer;
import pk.ssi.model.User;

/**
 *
 * @author Degus
 */
@Controller
@RequestMapping("/transferInternal")
public class RachunekController {
    
    @RequestMapping(method = RequestMethod.GET)
    public String transferForm(Map<String, Object> model, HttpServletRequest request) {
        Transfer transferForm = new Transfer();
        model.put("transferForm", transferForm);
        
        try{
            User userToLogin = (User)request.getSession().getAttribute("user");
            RachunekDao rachunekDao = new RachunekDao();
            List<Rachunek>rachunki = rachunekDao.getByPesel(userToLogin.getPesel());
            model.put("listOfAccount", rachunki);
            System.out.println(rachunki);
            return "transferIN";
        }
        catch(Exception e){
            return "loginPage";
        }
    }
    
    @RequestMapping(method = RequestMethod.POST)
    public String transfer(@ModelAttribute("transferForm") Transfer transfer,
            Map<String, Object> model, HttpServletRequest request) {
        
        RachunekDao rd=new RachunekDao();  
        System.out.println("Transfer z "+transfer.getNr1()+" do "+transfer.getNr2()+" wartosc "+transfer.getValue());
        
        if(rd.isRachunekExist(transfer.getNr2())==false)
        {
            request.getSession().setAttribute("message", "Sprawdz rachunek odbiorcy!");
            return "transferFailure";
        }
        else{
            String result=rd.transfer(transfer.getNr1(), transfer.getNr2(), transfer.getValue());
            System.out.println(result);
            if(result.equals("success"))
            {
                TransferDao td=new TransferDao();
                td.create(transfer);
                return "transferComplete";
            }
            else if(result.equals("lowBalance")){
                request.getSession().setAttribute("message", "Masz za malo srodkow na koncie!");
                return "transferFailure";
            }
            else{
                request.getSession().setAttribute("message", "Waluta nie zgadza sie");
                return "transferFailure";
            }  
        }
    }
    
}
