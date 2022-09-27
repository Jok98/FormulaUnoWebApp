package org.generationitaly.f1.repository.impl;

import org.generationitaly.f1.entity.Admin;
import org.generationitaly.f1.repository.AdminRepository;

public class AdminRepositoryImpl extends CrudRepositoryImpl<Admin, Integer> implements AdminRepository {

	public AdminRepositoryImpl() {
		super(Admin.class);
	}

}
