// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ges.domain;

import com.ges.domain.GesUser;
import com.ges.domain.Profile;

privileged aspect GesUser_Roo_JavaBean {
    
    public String GesUser.getUsername() {
        return this.username;
    }
    
    public void GesUser.setUsername(String username) {
        this.username = username;
    }
    
    public String GesUser.getPassword() {
        return this.password;
    }
    
    public void GesUser.setPassword(String password) {
        this.password = password;
    }
    
    public Boolean GesUser.getEnabled() {
        return this.enabled;
    }
    
    public void GesUser.setEnabled(Boolean enabled) {
        this.enabled = enabled;
    }
    
    public Profile GesUser.getProfile() {
        return this.profile;
    }
    
    public void GesUser.setProfile(Profile profile) {
        this.profile = profile;
    }
    
}
