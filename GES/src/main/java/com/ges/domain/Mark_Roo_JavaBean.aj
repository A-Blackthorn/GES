// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ges.domain;

import com.ges.domain.Exam;
import com.ges.domain.Mark;
import com.ges.domain.Student;

privileged aspect Mark_Roo_JavaBean {
    
    public float Mark.getMark() {
        return this.mark;
    }
    
    public void Mark.setMark(float mark) {
        this.mark = mark;
    }
    
    public Student Mark.getStudent() {
        return this.student;
    }
    
    public void Mark.setStudent(Student student) {
        this.student = student;
    }
    
    public Exam Mark.getExam() {
        return this.exam;
    }
    
    public void Mark.setExam(Exam exam) {
        this.exam = exam;
    }
    
}
