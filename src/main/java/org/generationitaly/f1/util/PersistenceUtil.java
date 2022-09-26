package org.generationitaly.f1.util;


import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class PersistenceUtil {

	private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("persistence");
	private static ThreadLocal<EntityManager> threadLocal = new ThreadLocal<EntityManager>();

	public static EntityManager getEntityManager() {
		EntityManager em = threadLocal.get();
		if (em == null) {
			em = emf.createEntityManager();
			threadLocal.set(em);
		}
		return em;
	}

	public static void closeEntityManager() {
		EntityManager em = threadLocal.get();
		if (em != null) {
			em.close();
			threadLocal.set(null);
		}
	}

	public static void beginTransaction() {
		getEntityManager().getTransaction().begin();
	}

	public static void commitTransaction() {
		getEntityManager().getTransaction().commit();
	}

	public static void rollbackTransaction() {
		getEntityManager().getTransaction().rollback();
	}

}
