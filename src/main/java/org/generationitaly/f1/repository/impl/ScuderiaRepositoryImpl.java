package org.generationitaly.f1.repository.impl;


import javax.persistence.EntityManager;

import org.generationitaly.f1.entity.Scuderia;
import org.generationitaly.f1.repository.ScuderiaRepository;
import org.generationitaly.f1.util.PersistenceUtil;

public class ScuderiaRepositoryImpl extends CrudRepositoryImpl<Scuderia, String> implements ScuderiaRepository {

	public ScuderiaRepositoryImpl() {
		super(Scuderia.class);
	}
	@Override
	public Scuderia findBySearchScuderia(String search) {
		EntityManager em = PersistenceUtil.getEntityManager();
		String nome = search;
		System.out.println();
		return (Scuderia) em.createQuery("select p from Scuderia p where p.nomeScuderia=:nome ", Scuderia.class)
				.setParameter("nome", nome).getSingleResult();
		
	}


}
