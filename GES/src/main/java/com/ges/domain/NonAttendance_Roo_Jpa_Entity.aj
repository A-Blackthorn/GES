// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ges.domain;

import com.ges.domain.NonAttendance;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

privileged aspect NonAttendance_Roo_Jpa_Entity {
    
    declare @type: NonAttendance: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long NonAttendance.id;
    
    public Long NonAttendance.getId() {
        return this.id;
    }
    
    public void NonAttendance.setId(Long id) {
        this.id = id;
    }
    
}