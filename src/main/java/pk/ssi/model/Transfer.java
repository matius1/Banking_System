/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pk.ssi.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author Degus
 */
@Entity
@Table(name = "transfer")
public class Transfer {
    @Id
    @Column(name = "IdTransfer")
    @GeneratedValue
    private int id;
    
    @Column(name = "Nr1")
    private String nr1;
    
    @Column(name = "Nr2")
    private String nr2;
    
    @Column(name = "Wartosc")
    private double value;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public String getNr1() {
        return nr1;
    }

    public void setNr1(String nr1) {
        this.nr1 = nr1;
    }

    public String getNr2() {
        return nr2;
    }

    public void setNr2(String nr2) {
        this.nr2 = nr2;
    }

    public double getValue() {
        return value;
    }

    public void setValue(double value) {
        this.value = value;
    }
    
    
}
