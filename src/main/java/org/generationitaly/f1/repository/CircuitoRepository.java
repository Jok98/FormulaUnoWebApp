package org.generationitaly.f1.repository;

import java.util.List;

import org.generationitaly.f1.entity.Circuito;

public interface CircuitoRepository extends CrudRepository<Circuito, String> {

	 List<Circuito> findBySearchCircuito(String search);
}
