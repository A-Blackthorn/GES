// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ges.domain;

import com.ges.domain.GesUser;
import com.ges.domain.Grade;
import com.ges.domain.Student;
import com.ges.domain.Subject;
import com.ges.domain.Teacher;
import java.util.List;

privileged aspect Teacher_Roo_JavaBean {
    
    public GesUser Teacher.getGesUser() {
        return this.gesUser;
    }
    
    public void Teacher.setGesUser(GesUser gesUser) {
        this.gesUser = gesUser;
    }
    
    public String Teacher.getLastName() {
        return this.lastName;
    }
    
    public void Teacher.setLastName(String lastName) {
        this.lastName = lastName;
    }
    
    public String Teacher.getFirstName() {
        return this.firstName;
    }
    
    public void Teacher.setFirstName(String firstName) {
        this.firstName = firstName;
    }
    
    public String Teacher.getCIN() {
        return this.CIN;
    }
    
    public void Teacher.setCIN(String CIN) {
        this.CIN = CIN;
    }
    
    public String Teacher.getTel() {
        return this.tel;
    }
    
    public void Teacher.setTel(String tel) {
        this.tel = tel;
    }
    
    public List<Subject> Teacher.getSubjects() {
        return this.subjects;
    }
    
    public void Teacher.setSubjects(List<Subject> subjects) {
        this.subjects = subjects;
    }
    
    public List<Grade> Teacher.getGrades() {
        return this.grades;
    }
    
    public void Teacher.setGrades(List<Grade> grades) {
        this.grades = grades;
    }
    
    public List<Student> Teacher.getStudents() {
        return this.students;
    }
    
    public void Teacher.setStudents(List<Student> students) {
        this.students = students;
    }
    
}
