package org.generationitaly.f1.entity;

import java.util.List;
import java.util.jar.Attributes.Name;

//import org.generationitaly.f1.entity.ClassificaCostruttori;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "scuderia")
public class Scuderia {

    @Column(name = "logo", length = 6000, nullable = false)
    private String logo;

    @Id
    @Column(name = "nome_scuderia", length = 45, nullable = false)
    private String nomeScuderia;

    @Column(name = "anno_esordio", nullable = false)
    private int annoEsordio;

    @Column(name = "nazionalita", length = 45, nullable = false)
    private String nazionalita;

    @Column(name = "numero_vittorie", nullable = false)
    private int numeroVittorie;

    @Column(name = "primo_pilota", length = 45, nullable = false)
    private String primoPilota;

    @Column(name = "secondo_pilota", length = 45, nullable = false)
    private String secondoPilota;

    @Column(name = "team_principal", length = 45, nullable = false)
    private String teamPrincipal;

    @Column(name = "sito_web", length = 6000, nullable = false)
    private String sitoWeb;

    @Column(name = "storia", length = 6000, nullable = false)
    private String storia;

    @Column(name = "icona", length = 1000, nullable = false)
    private String icona;

    @Column(name = "primo_mondiale", nullable = false)
    private int primoMondiale;

    @OneToMany(mappedBy = "scuderia", fetch = FetchType.EAGER)
    private List<Pilota> piloti;

    @OneToOne
    @JoinColumn(name = "id_vettura", referencedColumnName = "id_vettura", nullable = false)
    private Monoposto monoposto;
    
    @Column(name = "direttore_tecnico", length = 45, nullable = false)
    private String direttoreTecnico;

    @Column(name = "bio_vettura", length = 500, nullable = false)
    private String bioVettura;

    @Column(name = "info", length = 500, nullable = false)
    private String info;
    
    @Column(name = "pole_positions", nullable = false)
    private int polePositions;
    
    @Column(name = "numero_partecipazioni", nullable = false)
    private int numeroPartecipazioni;
    
    public int getPolePositions() {
		return polePositions;
	}

	public void setPolePositions(int polePositions) {
		this.polePositions = polePositions;
	}

	public int getNumeroPartecipazioni() {
		return numeroPartecipazioni;
	}

	public void setNumeroPartecipazioni(int numeroPartecipazioni) {
		this.numeroPartecipazioni = numeroPartecipazioni;
	}

	public int getPrimoMondiale() {
        return primoMondiale;
    }

    public void setPrimoMondiale(int primoMondiale) {
        this.primoMondiale = primoMondiale;
    }

    public String getDirettoreTecnico() {
        return direttoreTecnico;
    }

    public void setDirettoreTecnico(String direttoreTecnico) {
        this.direttoreTecnico = direttoreTecnico;
    }

    public String getBioVettura() {
        return bioVettura;
    }

    public void setBioVettura(String bioVettura) {
        this.bioVettura = bioVettura;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

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

    public List<Pilota> getPiloti() {
        return piloti;
    }

    public void setPiloti(List<Pilota> piloti) {
        this.piloti = piloti;
    }

    public Monoposto getMonoposto() {
        return monoposto;
    }

    public void setMonoposto(Monoposto monoposto) {
        this.monoposto = monoposto;
    }

    public String getIcona() {
        return icona;
    }

    public void setIcona(String icona) {
        this.icona = icona;
    }

    @Override
    public String toString() {
        return "Scuderia [logo=" + logo + ", nomeScuderia=" + nomeScuderia + ", annoEsordio=" + annoEsordio
                + ", nazionalita=" + nazionalita + ", numeroVittorie=" + numeroVittorie + ", primoPilota=" + primoPilota
                + ", secondoPilota=" + secondoPilota + ", teamPrincipal=" + teamPrincipal + ", sitoWeb=" + sitoWeb
                + ", storia=" + storia + ", monoposto=" + monoposto + "]";
    }

}
