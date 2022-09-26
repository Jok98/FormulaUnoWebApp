package org.generationitaly.f1.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

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
		private Date annoProduzione;
		
		@Column(name = "Pilota_Numero", nullable = false)
		private int pilota;
		
		@Column(name = "Scuderia_nomeScuderia", nullable = false)
		private String scuderia;
		
		@Column(name = "fotoMonoposto", nullable = false)
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

		public int getPilota() {
			return pilota;
		}

		public void setPilota(int pilota) {
			this.pilota = pilota;
		}

		public String getScuderia() {
			return scuderia;
		}

		public void setScuderia(String scuderia) {
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
			return "Monoposto [idVettura=" + idVettura + ", motore=" + motore + ", numeroVittorie=" + numeroVittorie
					+ ", annoProduzione=" + annoProduzione + ", pilota=" + pilota + ", scuderia=" + scuderia
					+ ", fotoMonoposto=" + fotoMonoposto + "]";
		}
		
		
}
