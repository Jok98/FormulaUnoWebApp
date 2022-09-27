package org.generationitaly.f1.entity;

import java.sql.Date;

import org.generationitaly.f1.entity.Pilota;
import org.generationitaly.f1.entity.Scuderia;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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

	@Column(name = "numeroVittorie", nullable = false)
	private int numeroVittorie;

	@Column(name = "annoProduzione", nullable = false)
	@Temporal(TemporalType.DATE)
	private Date annoProduzione;

	@OneToOne
	@JoinColumn(name = "numeroPilota", nullable = false)
	private Pilota pilota;

	@ManyToOne
	@JoinColumn(name = "nomeScuderia", nullable = false)
	private Scuderia scuderia;

	@Column(name = "fotoMonoposto", length = 6000, nullable = false)
	private String fotoMonoposto;

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

	public int getNumeroVittorie() {
		return numeroVittorie;
	}

	public void setNumeroVittorie(int numeroVittorie) {
		this.numeroVittorie = numeroVittorie;
	}

	public Date getAnnoProduzione() {
		return annoProduzione;
	}

	public void setAnnoProduzione(Date annoProduzione) {
		this.annoProduzione = annoProduzione;
	}

	public Pilota getPilota() {
		return pilota;
	}

	public void setPilota(Pilota pilota) {
		this.pilota = pilota;
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
}
