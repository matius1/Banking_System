/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pk.ssi;

import java.util.Map;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pk.ssi.dao.RachunekDao;
import pk.ssi.dao.TransferDao;
import pk.ssi.model.Transfer;

/**
 *
 * @author Degus
 */
@Controller
@RequestMapping("/transferIN")
public class RachunekController {
    
    @RequestMapping(method = RequestMethod.GET)
    public String transferForm(Map<String, Object> model) {
        Transfer transferForm = new Transfer();
        model.put("transferForm", transferForm);
        System.out.println("dsds");
        return "transferIN";
    }
    
    @RequestMapping(method = RequestMethod.POST)
    public String transfer(@ModelAttribute("transferForm") Transfer transfer,
            Map<String, Object> model) {
        
        System.out.println(transfer.getNr1());
        
        RachunekDao rd=new RachunekDao();
        String result=rd.transfer(transfer.getNr1(), transfer.getNr2(), transfer.getValue());
        System.out.println(result);
        if(result.equals("success"))
        {
            TransferDao td=new TransferDao();
            td.create(transfer);
        }
        return "home";
    }
    
}
