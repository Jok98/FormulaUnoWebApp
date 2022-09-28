package org.generationitaly.f1.repository;


import org.generationitaly.f1.entity.Pilota;

public interface PilotaRepository extends CrudRepository<Pilota, Integer> {

	 Pilota findBySearchPilota(String search);
}
