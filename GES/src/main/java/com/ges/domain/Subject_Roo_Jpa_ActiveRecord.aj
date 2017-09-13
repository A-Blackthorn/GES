// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ges.domain;

import com.ges.domain.Subject;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Subject_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Subject.entityManager;
    
    public static final List<String> Subject.fieldNames4OrderClauseFilter = java.util.Arrays.asList("title");
    
    public static final EntityManager Subject.entityManager() {
        EntityManager em = new Subject().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Subject.countSubjects() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Subject o", Long.class).getSingleResult();
    }
    
    public static List<Subject> Subject.findAllSubjects() {
        return entityManager().createQuery("SELECT o FROM Subject o", Subject.class).getResultList();
    }
    
    public static List<Subject> Subject.findAllSubjects(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Subject o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Subject.class).getResultList();
    }
    
    public static Subject Subject.findSubject(Long id) {
        if (id == null) return null;
        return entityManager().find(Subject.class, id);
    }
    
    public static List<Subject> Subject.findSubjectEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Subject o", Subject.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Subject> Subject.findSubjectEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Subject o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Subject.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Subject.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Subject.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Subject attached = Subject.findSubject(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Subject.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Subject.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Subject Subject.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Subject merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
