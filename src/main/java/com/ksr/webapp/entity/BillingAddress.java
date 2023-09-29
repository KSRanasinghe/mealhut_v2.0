package com.ksr.webapp.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "billing_address")
public class BillingAddress extends BaseEntity{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "line_1")
    private String lineOne;

    @Column(name = "line_2")
    private String lineTwo;

    @Column(name = "city")
    private String city;

    @Column(name = "user_profile_id")
    private Long userProfileId;

    @OneToOne
    @JoinColumn(name = "user_profile_id", referencedColumnName = "id", insertable = false, updatable = false)
    private UserProfile userProfileByUserProfileId;

    public BillingAddress() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getLineOne() {
        return lineOne;
    }

    public void setLineOne(String lineOne) {
        this.lineOne = lineOne;
    }

    public String getLineTwo() {
        return lineTwo;
    }

    public void setLineTwo(String lineTwo) {
        this.lineTwo = lineTwo;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public Long getUserProfileId() {
        return userProfileId;
    }

    public void setUserProfileId(Long userProfileId) {
        this.userProfileId = userProfileId;
    }

    public UserProfile getUserProfileByUserProfileId() {
        return userProfileByUserProfileId;
    }

    public void setUserProfileByUserProfileId(UserProfile userProfileByUserProfileId) {
        this.userProfileByUserProfileId = userProfileByUserProfileId;
    }
}
