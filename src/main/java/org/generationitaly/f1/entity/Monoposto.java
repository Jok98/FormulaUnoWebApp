package org.generationitaly.f1.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "monoposto")
public class Monoposto {

	@Id
	@Column(name = "idVettura", length = 45, nullable = false)
	private String idVettura;

	@Column(name = "motore", length = 45, nullable = false)
	private String motore;

	@Column(name = "annoProduzione", nullable = false)
	@Temporal(TemporalType.DATE)
	private Date annoProduzione;

	@Column(name = "fotoMonoposto", length = 6000, nullable = false)
	private String fotoMonoposto;

	@Column(name = "fotoMotore", length = 6000, nullable = false)
	private String fotoMotore;

	@OneToOne(mappedBy = "monoposto", fetch = FetchType.EAGER)
	private Scuderia scuderia;

	public String getFotoMotore() {
		return fotoMotore;
	}

	public void setFotoMotore(String fotoMotore) {
		this.fotoMotore = fotoMotore;
	}

	public Date getAnnoProduzione() {
		return annoProduzione;
	}

	public String getIdVettura() {
		return idVettura;
	}

	public void setIdVettura(String idVettura) {
		this.idVettura = idVettura;
	}

	public String getMotore() {
		return motore;
	}

	public void setMotore(String motore) {
		this.motore = motore;
	}

	public void setAnnoProduzione(Date annoProduzione) {
		this.annoProduzione = annoProduzione;
	}

	public Scuderia getScuderia() {
		return scuderia;
	}

	public void setScuderia(Scuderia scuderia) {
		this.scuderia = scuderia;
	}

	public String getFotoMonoposto() {
		return fotoMonoposto;
	}

	public void setFotoMonoposto(String fotoMonoposto) {
		this.fotoMonoposto = fotoMonoposto;
	}

	@Override
	public String toString() {
		return "Monoposto [idVettura=" + idVettura + ", motore=" + motore + ", annoProduzione=" + annoProduzione
				+ ", scuderia=" + scuderia + ", fotoMonoposto=" + fotoMonoposto + ", fotoMotore=" + fotoMotore + "]";
	}

}
