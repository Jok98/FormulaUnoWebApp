package org.generationitaly.f1.repository.impl;

import org.generationitaly.f1.entity.Monoposto;
import org.generationitaly.f1.repository.MonopostoRepository;

public class MonopostoRepositoryImpl extends CrudRepositoryImpl<Monoposto, String> implements MonopostoRepository {

	public MonopostoRepositoryImpl() {
		super(Monoposto.class);
	}

}
