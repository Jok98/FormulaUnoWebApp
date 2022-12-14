package org.generationitaly.f1.service;

import java.util.List;

import org.generationitaly.f1.entity.Circuito;
import org.generationitaly.f1.entity.Pilota;
import org.generationitaly.f1.entity.Scuderia;

public interface F1Service {

	List<Scuderia> findAllScuderie();

	List<Pilota> findAllPiloti();

	List<Circuito> findAllCircuiti();

	Pilota findPilotaByNumero(int numeroPilota);

	Scuderia findScuderiaByNome(String nomeScuderia);

	Circuito findCircuitoByNome(String nomeCircuito);

	List<Object> findBySearch(String search,String searchType);
}
