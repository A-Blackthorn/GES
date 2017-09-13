package com.ges.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(versionField = "")
public class Mark {

    /**
     */
    private float mark;

    /**
     */
    @ManyToOne
    private Student student;

    /**
     */
    @ManyToOne
    private Exam exam;
}
