package pk.ssi.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "rachunek")
public class Rachunek {
	
	@Id
	@Column(name = "IdRachunek")
	private int idRachunek;
	
	@Column(name = "NrRachunku")
	private String nrRachunku;
	
	@Column(name = "Saldo")
	private int saldo;
	
	@Column(name = "Waluta")
	private String waluta;
	
	@Column(name = "Pesel")//pesel wlasciciela, klucz obcy
	private int pesel;

	public int getIdRachunek() {
		return idRachunek;
	}

	public void setIdRachunek(int idRachunek) {
		this.idRachunek = idRachunek;
	}

	public String getNrRachunku() {
		return nrRachunku;
	}

	public void setNrRachunku(String nrRachunku) {
		this.nrRachunku = nrRachunku;
	}

	public int getSaldo() {
		return saldo;
	}

	public void setSaldo(int saldo) {
		this.saldo = saldo;
	}

	public String getWaluta() {
		return waluta;
	}

	public void setWaluta(String waluta) {
		this.waluta = waluta;
	}

	public int getPesel() {
		return pesel;
	}

	public void setPesel(int pesel) {
		this.pesel = pesel;
	}
}
