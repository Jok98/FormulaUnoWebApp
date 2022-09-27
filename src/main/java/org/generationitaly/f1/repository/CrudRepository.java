package org.generationitaly.f1.repository;

import java.util.List;

public interface CrudRepository<T, ID> {

	void save(T entity);

	void update(T entity);

	void delete(T entity);

	T findById(ID id);

	List<T> findAll();

	Long count();

}
