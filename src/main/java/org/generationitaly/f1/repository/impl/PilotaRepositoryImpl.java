package org.generationitaly.f1.repository.impl;

import org.generationitaly.f1.entity.Pilota;
import org.generationitaly.f1.repository.PilotaRepository;

public class PilotaRepositoryImpl extends CrudRepositoryImpl<Pilota, Integer> implements PilotaRepository {

	public PilotaRepositoryImpl() {
		super(Pilota.class);
	}

}
