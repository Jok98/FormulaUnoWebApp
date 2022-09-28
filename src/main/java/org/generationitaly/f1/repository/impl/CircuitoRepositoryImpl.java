package org.generationitaly.f1.repository.impl;

import javax.persistence.EntityManager;

import org.generationitaly.f1.entity.Circuito;
import org.generationitaly.f1.repository.CircuitoRepository;
import org.generationitaly.f1.util.PersistenceUtil;

public class CircuitoRepositoryImpl extends CrudRepositoryImpl<Circuito, String> implements CircuitoRepository {

	public CircuitoRepositoryImpl() {
		super(Circuito.class);
	}

	@Override
	public Circuito findBySearchCircuito(String search) {

		EntityManager em = PersistenceUtil.getEntityManager();
		String nome = search;
		System.out.println();
		return (Circuito) em.createQuery("select p from Circuito p where p.nomeCircuito=:nome ", Circuito.class)
				.setParameter("nome", nome).getSingleResult();
	}

}
