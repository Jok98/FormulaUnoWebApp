package org.generationitaly.f1.repository;


import java.util.List;

import org.generationitaly.f1.entity.Pilota;

public interface PilotaRepository extends CrudRepository<Pilota, Integer> {

	 List<Pilota> findBySearchPilota(String search);
	 
	 List<Pilota> findPilotiOrdinatiByScuderia();
}
