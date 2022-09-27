package org.generationitaly.f1.repository.impl;

import org.generationitaly.f1.entity.Gara;
import org.generationitaly.f1.repository.GaraRepository;

public class GaraRepositoryImpl extends CrudRepositoryImpl<Gara, Integer> implements GaraRepository {

	public GaraRepositoryImpl() {
		super(Gara.class);
	}

}
