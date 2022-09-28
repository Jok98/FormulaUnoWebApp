package org.generationitaly.f1.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "monoposto")
public class Monoposto {

	@Id
	@Column(name = "id_vettura", length = 45, nullable = false)
	private String idVettura;

	@Column(name = "motore", length = 100, nullable = false)
	private String motore;

	@Column(name = "anno_produzione", nullable = false)
	private int annoProduzione;

	@Column(name = "foto_monoposto", length = 6000, nullable = false)
	private String fotoMonoposto;

	@Column(name = "foto_motore", length = 6000, nullable = false)
	private String fotoMotore;

	@OneToOne(mappedBy = "monoposto")
	private Scuderia scuderia;

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

	public int getAnnoProduzione() {
		return annoProduzione;
	}

	public void setAnnoProduzione(int annoProduzione) {
		this.annoProduzione = annoProduzione;
	}

	public String getFotoMonoposto() {
		return fotoMonoposto;
	}

	public void setFotoMonoposto(String fotoMonoposto) {
		this.fotoMonoposto = fotoMonoposto;
	}

	public String getFotoMotore() {
		return fotoMotore;
	}

	public void setFotoMotore(String fotoMotore) {
		this.fotoMotore = fotoMotore;
	}

	public Scuderia getScuderia() {
		return scuderia;
	}

	public void setScuderia(Scuderia scuderia) {
		this.scuderia = scuderia;
	}

	@Override
	public String toString() {
		return "Monoposto [idVettura=" + idVettura + ", motore=" + motore + ", annoProduzione=" + annoProduzione
				+ ", fotoMonoposto=" + fotoMonoposto + ", fotoMotore=" + fotoMotore + "]";
	}

}
