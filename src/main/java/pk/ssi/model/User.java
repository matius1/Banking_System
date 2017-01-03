package pk.ssi.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user")
public class User {
    
	@Column(name = "Imie")
	private String imie;
	
	@Column(name = "Nazwisko")
	private String nazwisko;
	
	@Column(name = "Email")
	private String email;
	
	@Column(name = "Login")
	private String login;
	
	@Column(name = "Haslo")
	private String haslo;
	

	@Column(name = "Pesel")
	private String pesel;

        @Id
        @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "IdAdres")
	private int idAdres;
	
	@Column(name = "NumerTel")
	private String numerTel;
	
	@Column(name = "DataUrodzenia")
	private String dataUro;
        
        @Column(name = "Rola")
        private String rola;

        public String getRola() {
            return rola;
        }

        public void setRola(String rola) {
            this.rola = rola;
        }

	public String getImie() {
		return imie;
	}

	public void setImie(String imie) {
		this.imie = imie;
	}

	public String getNazwisko() {
		return nazwisko;
	}

	public void setNazwisko(String nazwisko) {
		this.nazwisko = nazwisko;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getHaslo() {
		return haslo;
	}

	public void setHaslo(String haslo) {
		this.haslo = haslo;
	}

	public String getPesel() {
		return pesel;
	}

	public void setPesel(String pesel) {
		this.pesel = pesel;
	}

	public int getIdAdres() {
		return idAdres;
	}

	public void setIdAdres(int idAdres) {
		this.idAdres = idAdres;
	}

	public String getNumerTel() {
		return numerTel;
	}

	public void setNumerTel(String numerTel) {
		this.numerTel = numerTel;
	}

	public String getDataUro() {
		return dataUro;
	}

	public void setDataUro(String dataUro) {
		this.dataUro = dataUro;
	}
	
	

}
