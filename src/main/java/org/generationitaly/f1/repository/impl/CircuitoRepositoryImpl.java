package org.generationitaly.f1.repository.impl;

import java.util.List;

import javax.persistence.EntityManager;

import org.generationitaly.f1.entity.Circuito;
import org.generationitaly.f1.repository.CircuitoRepository;
import org.generationitaly.f1.util.PersistenceUtil;

public class CircuitoRepositoryImpl extends CrudRepositoryImpl<Circuito, String> implements CircuitoRepository {

	public CircuitoRepositoryImpl() {
		super(Circuito.class);
	}

	public List<Circuito> findBySearchCircuito(String search) {
		EntityManager em = PersistenceUtil.getEntityManager();
		System.out.println();
		return (List<Circuito>) em
				.createQuery("select c from Circuito c where c.nomeCircuito like :nome", Circuito.class).setParameter("nome", search + "%")
				.getResultList();

	}

}
