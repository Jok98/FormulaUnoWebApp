package org.generationitaly.f1.repository.impl;

import org.generationitaly.f1.entity.Scuderia;
import org.generationitaly.f1.repository.ScuderiaRepository;

public class ScuderiaRepositoryImpl extends CrudRepositoryImpl<Scuderia, String> implements ScuderiaRepository {

	public ScuderiaRepositoryImpl() {
		super(Scuderia.class);
	}

}
