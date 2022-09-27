package org.generationitaly.f1.entity;

import java.util.Date;
import java.util.List;

import org.generationitaly.f1.entity.Gara;
//import org.generationitaly.f1.entity.ClassificaPiloti;
import org.generationitaly.f1.entity.Scuderia;
import org.generationitaly.f1.entity.Monoposto;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

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
	@Temporal(TemporalType.DATE)
	private Date dataNascita;

	@Column(name = "luogoNascita", length = 45, nullable = false)
	private String luogoNascita;

	@Column(name = "nazionalita", length = 45, nullable = false)
	private String nazionalita;

	@Id
	@Column(name = "numeroPilota", nullable = false)
	private int numeroPilota;

	@Column(name = "titoliMondiali", nullable = false)
	private int titoliMondiali;

	@Column(name = "profiloSocial", length = 6000, nullable = false)
	private String profiloSocial;

	@Column(name = "biografia", length = 6000, nullable = false)
	private String biografia;

	@ManyToOne
	@JoinColumn(name = "nomeScuderia", nullable = false)
	private Scuderia scuderia;

	@OneToMany(mappedBy = "pilota")
	private List<Gara> gare;

	@OneToOne(mappedBy = "pilota")
	private Monoposto monoposto;

//	@OneToOne(mappedBy = "pilota")
//	private ClassificaPiloti classificaPiloti;

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

	public Scuderia getScuderia() {
		return scuderia;
	}

	public void setScuderia(Scuderia scuderia) {
		this.scuderia = scuderia;
	}

	public List<Gara> getGare() {
		return gare;
	}

	public void setGare(List<Gara> gare) {
		this.gare = gare;
	}

	public Monoposto getMonoposto() {
		return monoposto;
	}

	public void setMonoposto(Monoposto monoposto) {
		this.monoposto = monoposto;
	}

//	public ClassificaPiloti getClassificaPiloti() {
//		return classificaPiloti;
//	}
//
//	public void setClassificaPiloti(ClassificaPiloti classificaPiloti) {
//		this.classificaPiloti = classificaPiloti;
//	}

	@Override
	public String toString() {
		return "Pilota [numeroPilota=" + numeroPilota + ", foto=" + foto + ", nome=" + nome + ", cognome=" + cognome
				+ ", dataNascita=" + dataNascita + ", luogoNascita=" + luogoNascita + ", nazionalita=" + nazionalita
				+ ", titoliMondiali=" + titoliMondiali + ", profiloSocial=" + profiloSocial + ", biografia=" + biografia
				+ "]";
	}

}
