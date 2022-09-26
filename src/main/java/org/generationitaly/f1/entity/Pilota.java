package org.generationitaly.f1.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "pilota")
public class Pilota {
	
	@Column(name = "foto", length = 6000, nullable = false)
	private String foto;
	
	@Column(name = "nome", length = 45, nullable = false)
	private String nome;
	
	@Column(name = "cognome", length = 45, nullable = false)
	private String cognome;
	
	@Column(name = "dataNascita", nullable = false)
	private Date dataNascita;
	
	@Column(name = "luogoNascita", length = 45, nullable = false)
	private String luogoNascita;
	
	@Column(name = "nazionalita", length = 45, nullable = false)
	private String nazionalita;
	
	@Id
	@Column(name = "numeroPilota", nullable = false)
	private int numeroPilota;
	
	@Column(name = "titoliMondiali", length = 45, nullable = false)
	private int titoliMondiali;
	
	@Column(name = "profiloSocial", length = 6000, nullable = false)
	private String profiloSocial;
	
	@Column(name = "biografia", length = 6000, nullable = false)
	private String biografia;
	
	@Column(name = "nomeScuderia", length = 45, nullable = false)
	private String nomeScuderia;

	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCognome() {
		return cognome;
	}

	public void setCognome(String cognome) {
		this.cognome = cognome;
	}

	public Date getDataNascita() {
		return dataNascita;
	}

	public void setDataNascita(Date dataNascita) {
		this.dataNascita = dataNascita;
	}

	public String getLuogoNascita() {
		return luogoNascita;
	}

	public void setLuogoNascita(String luogoNascita) {
		this.luogoNascita = luogoNascita;
	}

	public String getNazionalita() {
		return nazionalita;
	}

	public void setNazionalita(String nazionalita) {
		this.nazionalita = nazionalita;
	}

	public int getNumeroPilota() {
		return numeroPilota;
	}

	public void setNumeroPilota(int numeroPilota) {
		this.numeroPilota = numeroPilota;
	}

	public int getTitoliMondiali() {
		return titoliMondiali;
	}

	public void setTitoliMondiali(int titoliMondiali) {
		this.titoliMondiali = titoliMondiali;
	}

	public String getProfiloSocial() {
		return profiloSocial;
	}

	public void setProfiloSocial(String profiloSocial) {
		this.profiloSocial = profiloSocial;
	}

	public String getBiografia() {
		return biografia;
	}

	public void setBiografia(String biografia) {
		this.biografia = biografia;
	}

	public String getNomeScuderia() {
		return nomeScuderia;
	}

	public void setNomeScuderia(String nomeScuderia) {
		this.nomeScuderia = nomeScuderia;
	}

	@Override
	public String toString() {
		return "Pilota [foto=" + foto + ", nome=" + nome + ", cognome=" + cognome + ", dataNascita=" + dataNascita
				+ ", luogoNascita=" + luogoNascita + ", nazionalita=" + nazionalita + ", numeroPilota=" + numeroPilota
				+ ", titoliMondiali=" + titoliMondiali + ", profiloSocial=" + profiloSocial + ", biografia=" + biografia
				+ ", nomeScuderia=" + nomeScuderia + "]";
	}
	
	
	
}
