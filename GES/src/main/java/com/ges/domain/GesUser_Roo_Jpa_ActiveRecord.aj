// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ges.domain;

import com.ges.domain.GesUser;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect GesUser_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager GesUser.entityManager;
    
    public static final List<String> GesUser.fieldNames4OrderClauseFilter = java.util.Arrays.asList("username", "password", "enabled", "profile");
    
    public static final EntityManager GesUser.entityManager() {
        EntityManager em = new GesUser().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long GesUser.countGesUsers() {
        return entityManager().createQuery("SELECT COUNT(o) FROM GesUser o", Long.class).getSingleResult();
    }
    
    public static List<GesUser> GesUser.findAllGesUsers() {
        return entityManager().createQuery("SELECT o FROM GesUser o", GesUser.class).getResultList();
    }
    
    public static List<GesUser> GesUser.findAllGesUsers(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM GesUser o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, GesUser.class).getResultList();
    }
    
    public static GesUser GesUser.findGesUser(Long id) {
        if (id == null) return null;
        return entityManager().find(GesUser.class, id);
    }
    
    public static List<GesUser> GesUser.findGesUserEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM GesUser o", GesUser.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<GesUser> GesUser.findGesUserEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM GesUser o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, GesUser.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void GesUser.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void GesUser.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            GesUser attached = GesUser.findGesUser(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void GesUser.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void GesUser.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public GesUser GesUser.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        GesUser merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
