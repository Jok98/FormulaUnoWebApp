package org.generationitaly.f1.repository;

import java.util.List;

import org.generationitaly.f1.entity.Scuderia;



public interface ScuderiaRepository extends CrudRepository<Scuderia, String> {

	List<Scuderia> findBySearchScuderia(String search);


}
