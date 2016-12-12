package pk.ssi.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "adres")
public class Adres {
	
	@Id
	@Column(name = "IdAdres")
	private int idAdres;
	
	@Column(name = "Ulica")
	private String ulica;
	
	@Column(name = "Dom")
	private int dom;
	
	@Column(name = "Mieszkanie")
	private int mieszkanie;
	
	@Column(name = "Zip")
	private int zip;
	
	@Column(name = "Zip2")
	private int zip2;
	
	@Column(name = "Miasto")
	private String miasto;

	public int getIdAdres() {
		return idAdres;
	}

	public void setIdAdres(int idAdres) {
		this.idAdres = idAdres;
	}

	public String getUlica() {
		return ulica;
	}

	public void setUlica(String ulica) {
		this.ulica = ulica;
	}

	public int getDom() {
		return dom;
	}

	public void setDom(int dom) {
		this.dom = dom;
	}

	public int getMieszkanie() {
		return mieszkanie;
	}

	public void setMieszkanie(int mieszkanie) {
		this.mieszkanie = mieszkanie;
	}

	public int getZip() {
		return zip;
	}

	public void setZip(int zip) {
		this.zip = zip;
	}

	public int getZip2() {
		return zip2;
	}

	public void setZip2(int zip2) {
		this.zip2 = zip2;
	}

	public String getMiasto() {
		return miasto;
	}

	public void setMiasto(String miasto) {
		this.miasto = miasto;
	}
	
	

}
