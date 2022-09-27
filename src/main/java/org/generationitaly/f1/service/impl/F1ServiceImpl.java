package org.generationitaly.f1.service.impl;

import java.util.List;

import org.generationitaly.f1.entity.Scuderia;
import org.generationitaly.f1.repository.CircuitoRepository;
import org.generationitaly.f1.repository.GaraRepository;
import org.generationitaly.f1.repository.MonopostoRepository;
import org.generationitaly.f1.repository.PilotaRepository;
import org.generationitaly.f1.repository.ScuderiaRepository;
import org.generationitaly.f1.repository.impl.CircuitoRepositoryImpl;
import org.generationitaly.f1.repository.impl.GaraRepositoryImpl;
import org.generationitaly.f1.repository.impl.MonopostoRepositoryImpl;
import org.generationitaly.f1.repository.impl.PilotaRepositoryImpl;
import org.generationitaly.f1.repository.impl.ScuderiaRepositoryImpl;
import org.generationitaly.f1.service.F1Service;
import org.generationitaly.f1.util.PersistenceUtil;

public class F1ServiceImpl implements F1Service {

	private ScuderiaRepository scuderiaRepository = new ScuderiaRepositoryImpl();
	private PilotaRepository pilotaRepository = new PilotaRepositoryImpl();
	private GaraRepository garaRepository = new GaraRepositoryImpl();
	private MonopostoRepository monopostoRepository = new MonopostoRepositoryImpl();
	private CircuitoRepository circuitoRepository = new CircuitoRepositoryImpl();

	@Override
	public List<Scuderia> findAllScuderie() {
		List<Scuderia> scuderie = null;
		try {
			PersistenceUtil.beginTransaction();
			scuderie = scuderiaRepository.findAll();
			PersistenceUtil.commitTransaction();
		} catch (Exception e) {
			System.err.println();
			PersistenceUtil.rollbackTransaction();
		} finally {
//			PersistenceUtil.closeEntityManager();
		}
		return scuderie;
	}
}
