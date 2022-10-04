package org.generationitaly.f1.repository.impl;


import java.util.List;

import javax.persistence.EntityManager;

import org.generationitaly.f1.entity.Scuderia;
import org.generationitaly.f1.repository.ScuderiaRepository;
import org.generationitaly.f1.util.PersistenceUtil;

public class ScuderiaRepositoryImpl extends CrudRepositoryImpl<Scuderia, String> implements ScuderiaRepository {

	public ScuderiaRepositoryImpl() {
		super(Scuderia.class);
	}
	@Override
	public List<Scuderia> findBySearchScuderia(String search) {
		EntityManager em = PersistenceUtil.getEntityManager();
		return em.createQuery("select s from Scuderia s where s.nomeScuderia like:search", Scuderia.class)
				.setParameter("search", search + "%").getResultList();
		
	}


}
