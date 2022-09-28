package org.generationitaly.f1.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import org.generationitaly.f1.entity.Gara;

@Entity
@Table(name = "circuito")
public class Circuito {

	@Id
	@Column(name = "nome_circuito", length = 45, nullable = false)
	private String nomeCircuito;

	@Column(name = "lunghezza", nullable = false)
	private int lunghezza;

	@Column(name = "citta", length = 45, nullable = false)
	private String citta;

	@Column(name = "nazione", length = 45, nullable = false)
	private String nazione;

	@Column(name = "miglior_tempo", nullable = false)
	private float migliorTempo;

	@Column(name = "foto_circuito", length = 6000, nullable = false)
	private String fotoCircuito;

	@Column(name = "numero_giri", nullable = false)
	private int numeroGiri;

	@Column(name = "pole_position", length = 45, nullable = false)
	private String polePosition;

	@Column(name = "vincitore", length = 45, nullable = false)
	private String vincitore;

	@Column(name = "indirizzo", length = 100, nullable = false)
	private String indirizzo;

	@Override
	public String toString() {
		return "Circuito [nomeCircuito=" + nomeCircuito + ", lunghezza=" + lunghezza + ", citta=" + citta + ", nazione="
				+ nazione + ", migliorTempo=" + migliorTempo + ", fotoCircuito=" + fotoCircuito + ", numeroGiri="
				+ numeroGiri + ", polePosition=" + polePosition + ", vincitore=" + vincitore + ", indirizzo="
				+ indirizzo + "]";
	}

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

	public int getNumeroGiri() {
		return numeroGiri;
	}

	public void setNumeroGiri(int numeroGiri) {
		this.numeroGiri = numeroGiri;
	}

	public String getPolePosition() {
		return polePosition;
	}

	public void setPolePosition(String polePosition) {
		this.polePosition = polePosition;
	}

	public String getVincitore() {
		return vincitore;
	}

	public void setVincitore(String vincitore) {
		this.vincitore = vincitore;
	}

	public String getIndirizzo() {
		return indirizzo;
	}

	public void setIndirizzo(String indirizzo) {
		this.indirizzo = indirizzo;
	}
}
