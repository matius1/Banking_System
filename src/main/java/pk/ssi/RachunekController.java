/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pk.ssi;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import pk.ssi.dao.RachunekDao;

/**
 *
 * @author Degus
 */
@Controller
public class RachunekController {
    
    @RequestMapping("/transfer")
	public String transfer() {
            RachunekDao rd=new RachunekDao();
            rd.transfer("PL697205975139167893297143402333", "PL618896332508543497938224365029", 1006);
            return "home";
	}
    
}
