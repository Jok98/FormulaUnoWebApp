package org.generationitaly.f1.entity;

import java.sql.Date;
//import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
//import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="Gara")
public class Gara {
	
//	CREATE TABLE IF NOT EXISTS `F1`.`Gara` (
//	  `idGara` INT NOT NULL,
//	  `listaPiloti` VARCHAR(45) NOT NULL,
//	  `date` DATE NOT NULL,
//	  `grigliaDiPartenza` VARCHAR(45) NOT NULL,
//	  `numeroGiri` INT NOT NULL,
//	  `nomeCircuito` VARCHAR(45) NOT NULL,
//	  `pilotaNumero` INT NOT NULL,
//	  PRIMARY KEY (`idGara`),
//	  INDEX `fk_Gara_Circuito1_idx` (`nomeCircuito` ASC) VISIBLE,
//	  INDEX `fk_Gara_Pilota1_idx` (`pilotaNumero` ASC) VISIBLE,
//	  CONSTRAINT `fk_Gara_Circuito1`
//	    FOREIGN KEY (`nomeCircuito`)
//	    REFERENCES `F1`.`Circuito` (`nomeCircuito`)
//	    ON DELETE NO ACTION
//	    ON UPDATE NO ACTION,
//	  CONSTRAINT `fk_Gara_Pilota1`
//	    FOREIGN KEY (`pilotaNumero`)
//	    REFERENCES `F1`.`Pilota` (`numeroPilota`)

	
	@Id
	@Column(name="idGara", nullable=false)
	private int idGara;
	
	@Column(name="date", nullable=false)
	@Temporal(TemporalType.DATE)
	private Date date;
	
	
	@Column(name="numeroGiri", nullable=false)
	private int numeroGiri;
	
	
	@OneToOne
	@JoinColumn(name="nomeCircuito", nullable=false)
	private Circuito circuito;
	
	
	@Column(name="lsitaPiloti", nullable=false)
	private List<Pilota> listaPiloti;
	
	@Column(name="grigliaDiPartenza", nullable=false)
	private List<Pilota> grigliaDiPartenza;
	
	@ManyToOne
	@JoinColumn(name="pilotaNumero", nullable=false)
	private Pilota pilota;


	public int getIdGara() {
		return idGara;
	}


	public void setIdGara(int idGara) {
		this.idGara = idGara;
	}


	public Date getDate() {
		return date;
	}


	public void setDate(Date date) {
		this.date = date;
	}


	public int getNumeroGiri() {
		return numeroGiri;
	}


	public void setNumeroGiri(int numeroGiri) {
		this.numeroGiri = numeroGiri;
	}


	public Circuito getCircuito() {
		return circuito;
	}


	public void setCircuito(Circuito circuito) {
		this.circuito = circuito;
	}


	@Override
	public String toString() {
		return "Gara [idGara=" + idGara + ", date=" + date + ", numeroGiri=" + numeroGiri + ", circuito=" + circuito
				+ "]";
	}
}
	
