package org.generationitaly.f1.repository.impl;

import java.util.List;

import javax.persistence.EntityManager;

import org.generationitaly.f1.entity.Pilota;
import org.generationitaly.f1.repository.PilotaRepository;
import org.generationitaly.f1.util.PersistenceUtil;

public class PilotaRepositoryImpl extends CrudRepositoryImpl<Pilota, Integer> implements PilotaRepository {

	public PilotaRepositoryImpl() {
		super(Pilota.class);
	}

	@Override
	public Pilota findBySearchPilota(String search) {
		EntityManager em = PersistenceUtil.getEntityManager();
		int indice = search.indexOf(" ");
		String nome = search.substring(0, indice);
		String cognome = search.substring(indice + 1, search.length());
		System.out.println();
		return (Pilota) em
				.createQuery("select p from Pilota p where p.nome=:nome and p.cognome=:cognome ", Pilota.class)
				.setParameter("nome", nome).setParameter("cognome", cognome).getSingleResult();

	}

	@Override
	public List<Pilota> findPilotiOrdinatiByScuderia() {
		EntityManager em = PersistenceUtil.getEntityManager();
		return em.createQuery("select p from Pilota p order by nome_scuderia", Pilota.class).getResultList();
	}

}
