package com.devnp.to;

import java.util.Date;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@javax.persistence.Entity
@org.hibernate.envers.Audited
@Table(name = "STUDENT")
public class Student {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ID")
	private Integer id ;

	@Column(name = "S_NAME", length=30)
	private String sName ;
	
	@Column(name = "S_SEX", length=1)
	private String sSex ;
	
	@Column(name = "S_AGE")
	private Integer sAge ;
	
	@DateTimeFormat(pattern="dd/MM/yyyy")
	@Column(name = "S_BIRTH")
	private Date sBirth ;
	
	public Student() {
		
	}
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getsName() {
		return sName;
	}

	public void setsName(String sName) {
		this.sName = sName;
	}

	public String getsSex() {
		return sSex;
	}

	public void setsSex(String sSex) {
		this.sSex = sSex;
	}

	public Integer getsAge() {
		return sAge;
	}

	public void setsAge(Integer sAge) {
		this.sAge = sAge;
	}

	public Date getsBirth() {
		return sBirth;
	}

	public void setsBirth(Date sBirth) {
		this.sBirth = sBirth;
	}
	
}
