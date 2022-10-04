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
	public List<Pilota> findBySearchPilota(String search) {
		EntityManager em = PersistenceUtil.getEntityManager();
		System.out.println();
		return em
				.createQuery("select p from Pilota p where p.nome like:search% or p.cognome like:search%", Pilota.class)
				.setParameter("search", search).getResultList();

	}

	@Override
	public List<Pilota> findPilotiOrdinatiByScuderia() {
		EntityManager em = PersistenceUtil.getEntityManager();
		return em.createQuery("select p from Pilota p order by nome_scuderia", Pilota.class).getResultList();
	}

}
