package org.generationitaly.f1.repository.impl;


import java.util.List;

import javax.persistence.EntityManager;

import org.generationitaly.f1.repository.CrudRepository;
import org.generationitaly.f1.util.PersistenceUtil;

public abstract class CrudRepositoryImpl<T, ID> implements CrudRepository<T, ID> {

	protected final Class<T> entityClass;

	public CrudRepositoryImpl(Class<T> entityClass) {
		this.entityClass = entityClass;
	}

	@Override
	public void save(T entity) {
		EntityManager em = PersistenceUtil.getEntityManager();
		em.persist(entity);
	}

	@Override
	public void update(T entity) {
		EntityManager em = PersistenceUtil.getEntityManager();
		em.persist(em.contains(entity) ? entity : em.merge(entity));
	}

	@Override
	public void delete(T entity) {
		EntityManager em = PersistenceUtil.getEntityManager();
		em.remove(em.contains(entity) ? entity : em.merge(entity));
	}

	@Override
	public T findById(ID id) {
		EntityManager em = PersistenceUtil.getEntityManager();
		return em.find(entityClass, id);
	}

	@Override
	public List<T> findAll() {
		EntityManager em = PersistenceUtil.getEntityManager();
		return em.createQuery("from " + entityClass.getName(), entityClass).getResultList();
	}

	@Override
	public Long count() {
		EntityManager em = PersistenceUtil.getEntityManager();
		return em.createQuery("select count(*) from " + entityClass.getName(), Long.class).getSingleResult();
	}

}
