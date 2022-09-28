package org.generationitaly.f1.repository.impl;

import org.generationitaly.f1.entity.Circuito;
import org.generationitaly.f1.repository.CircuitoRepository;

public class CircuitoRepositoryImpl extends CrudRepositoryImpl<Circuito, String> implements CircuitoRepository {

	public CircuitoRepositoryImpl() {
		super(Circuito.class);
	}

}
