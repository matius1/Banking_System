/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pk.ssi.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author Degus
 */
@Entity
@Table(name = "kontakt")
public class Kontakt {
    
    @Id
    @Column(name = "numer")
    private String numer;
	
    @Column(name = "nazwa")
    private String nazwa;
    
    @Column(name = "Pesel")
    private long pesel=1;

    public String getNumer() {
        return numer;
    }

    public void setNumer(String numer) {
        this.numer = numer;
    }

    public String getNazwa() {
        return nazwa;
    }

    public void setNazwa(String nazwa) {
        this.nazwa = nazwa;
    }

    public long getPesel() {
        return pesel;
    }

    public void setPesel(long pesel) {
        this.pesel = pesel;
    }
        
    
    
}
