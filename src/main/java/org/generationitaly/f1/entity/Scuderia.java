package org.generationitaly.f1.entity;

import java.util.List;

//import org.generationitaly.f1.entity.ClassificaCostruttori;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
//import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "scuderia")
public class Scuderia {

	@Column(name = "logo", length = 6000, nullable = false)
	private String logo;

	@Id
	@Column(name = "nomeScuderia", length = 45, nullable = false)
	private String nomeScuderia;

	@Column(name = "annoEsordio", nullable = false)
	private int annoEsordio;

	@Column(name = "nazionalita", length = 45, nullable = false)
	private String nazionalita;

	@Column(name = "numeroVittorie", nullable = false)
	private int numeroVittorie;

	@Column(name = "primoPilota", length = 45, nullable = false)
	private String primoPilota;

	@Column(name = "secondoPilota", length = 45, nullable = false)
	private String secondoPilota;

	@Column(name = "teamPrincipal", length = 45, nullable = false)
	private String teamPrincipal;

	@Column(name = "sitoWeb", length = 6000, nullable = false)
	private String sitoWeb;

	@Column(name = "storia", length = 6000, nullable = false)
	private String storia;

	@OneToMany(mappedBy = "scuderia", fetch = FetchType.EAGER)
	private List<Pilota> piloti;

	public List<Pilota> getPiloti() {
		return piloti;
	}

	public void setPiloti(List<Pilota> piloti) {
		this.piloti = piloti;
	}

//	public List<Monoposto> getMonoposti() {
//		return monoposti;
//	}
//
//	public void setMonoposti(List<Monoposto> monoposti) {
//		this.monoposti = monoposti;
//	}

//	@OneToMany(mappedBy = "scuderia", fetch = FetchType.EAGER)
//	private List<Monoposto> monoposti;

//	@OneToOne(mappedBy="scuderia")
//	private ClassificaCostruttori classificaCostruttori;

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public String getNomeScuderia() {
		return nomeScuderia;
	}

	public void setNomeScuderia(String nomeScuderia) {
		this.nomeScuderia = nomeScuderia;
	}

	public int getAnnoEsordio() {
		return annoEsordio;
	}

	public void setAnnoEsordio(int annoEsordio) {
		this.annoEsordio = annoEsordio;
	}

	public String getNazionalita() {
		return nazionalita;
	}

	public void setNazionalita(String nazionalita) {
		this.nazionalita = nazionalita;
	}

	public int getNumeroVittorie() {
		return numeroVittorie;
	}

	public void setNumeroVittorie(int numeroVittorie) {
		this.numeroVittorie = numeroVittorie;
	}

	public String getPrimoPilota() {
		return primoPilota;
	}

	public void setPrimoPilota(String primoPilota) {
		this.primoPilota = primoPilota;
	}

	public String getSecondoPilota() {
		return secondoPilota;
	}

	public void setSecondoPilota(String secondoPilota) {
		this.secondoPilota = secondoPilota;
	}

	public String getTeamPrincipal() {
		return teamPrincipal;
	}

	public void setTeamPrincipal(String teamPrincipal) {
		this.teamPrincipal = teamPrincipal;
	}

	public String getSitoWeb() {
		return sitoWeb;
	}

	public void setSitoWeb(String sitoWeb) {
		this.sitoWeb = sitoWeb;
	}

	public String getStoria() {
		return storia;
	}

	public void setStoria(String storia) {
		this.storia = storia;
	}

	@Override
	public String toString() {
		return "Scuderia [logo=" + logo + ", nomeScuderia=" + nomeScuderia + ", annoEsordio=" + annoEsordio
				+ ", nazionalita=" + nazionalita + ", numeroVittorie=" + numeroVittorie + ", primoPilota=" + primoPilota
				+ ", secondoPilota=" + secondoPilota + ", teamPrincipal=" + teamPrincipal + ", sitoWeb=" + sitoWeb
				+ ", storia=" + storia + "]";
	}

}
