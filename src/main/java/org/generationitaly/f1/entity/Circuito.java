package org.generationitaly.f1.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Circuito")
public class Circuito {
	
	@Id
	@Column(name="nomeCircuito", length=45, nullable=false)
	private String nomeCircuito;
	
	@Column(name="lunghezza", nullable=false)
	private int lunghezza;
	
	@Column(name="citta", length=45, nullable=false)
	private String citta;
	
	@Column(name="nazione", length=45, nullable=false)
	private String nazione;
	
	
	@Column(name="migliorTempo", nullable=false )
	private float migliorTempo;
	
	
	@Column(name="fotoCircuito", length=6000, nullable=false)
	private String fotoCircuito;


	public String getNomeCircuito() {
		return nomeCircuito;
	}


	public void setNomeCircuito(String nomeCircuito) {
		this.nomeCircuito = nomeCircuito;
	}


	public int getLunghezza() {
		return lunghezza;
	}


	public void setLunghezza(int lunghezza) {
		this.lunghezza = lunghezza;
	}


	public String getCitta() {
		return citta;
	}


	public void setCitta(String citta) {
		this.citta = citta;
	}


	public String getNazione() {
		return nazione;
	}


	public void setNazione(String nazione) {
		this.nazione = nazione;
	}


	public float getMigliorTempo() {
		return migliorTempo;
	}


	public void setMigliorTempo(float migliorTempo) {
		this.migliorTempo = migliorTempo;
	}


	public String getFotoCircuito() {
		return fotoCircuito;
	}


	public void setFotoCircuito(String fotoCircuito) {
		this.fotoCircuito = fotoCircuito;
	}


	@Override
	public String toString() {
		return "Circuito [nomeCircuito=" + nomeCircuito + ", lunghezza=" + lunghezza + ", citta=" + citta + ", nazione="
				+ nazione + ", migliorTempo=" + migliorTempo + ", fotoCircuito=" + fotoCircuito + "]";
	}
	
	

	
//	CREATE TABLE IF NOT EXISTS `F1`.`Circuito` (
//			  `nomeCircuito` VARCHAR(45) NOT NULL,
//			  `lunghezza` INT NOT NULL,
//			  `Citta` VARCHAR(45) NOT NULL,
//			  `Nazione` VARCHAR(45) NOT NULL,
//			  `migliorTempo` FLOAT NOT NULL,
//			  `fotoCircuito` VARCHAR(6000) NOT NULL,
//			  PRIMARY KEY (`nomeCircuito`))
}
