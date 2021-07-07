package com.dopamine.blessing.models;

//import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Future;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="donations")
public class Donations {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	private String description;
	@DateTimeFormat(pattern = "yyyy-mm-dd")
	private Date donationDate;
    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="donor_id")
    private User donor;
    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="organization_id")
    private User organization;
	@Column(updatable=false)
    private Date createdAt;
    private Date updatedAt;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="donationType_id")
    private DonationType donationType;

	public Donations() {
		super();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	

	public String getDonationDate() {
		if(donationDate != null) {
		SimpleDateFormat day = new SimpleDateFormat("EEEE, dd MMM yyyy");  
	    String stDate = day.format(donationDate);
	    return stDate;
		}
		return null;
	}

	public void setDonationDate(Date donationDate) {
		this.donationDate = donationDate;
	}

	public User getDonor() {
		return donor;
	}

	public void setDonor(User donor) {
		this.donor = donor;
	}

	public User getOrganization() {
		return organization;
	}

	public void setOrganization(User organization) {
		this.organization = organization;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	public DonationType getDonationType() {
		return donationType;
	}

	public void setDonationType(DonationType donationType) {
		this.donationType = donationType;
	}
    
    
}

