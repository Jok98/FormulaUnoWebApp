package org.generationitaly.f1.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

//@Entity
@Table(name = "admin")
public class Admin {

	@Id
	@Column(name = "userID", nullable = false)
	private int userId;

	@Column(name = "password", length = 45, nullable = false)
	private String password;

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Admin [userId=" + userId + ", password=" + password + "]";
	}

//	CREATE TABLE IF NOT EXISTS `F1`.`Admin` (
//			  `userId` INT NOT NULL,
//			  `password` VARCHAR(45) NOT NULL,
//			  PRIMARY KEY (`userId`))

}
