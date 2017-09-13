package com.ges.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(versionField = "")
public class Teacher {

    /**
     */
    @NotNull
    @ManyToOne
    private GesUser gesUser;

    /**
     */
    private String lastName;

    /**
     */
    private String firstName;

    /**
     */
    private String CIN;

    /**
     */
    private String tel;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private List<Subject> subjects = new ArrayList<Subject>();

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private List<Grade> grades = new ArrayList<Grade>();

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private List<Student> students = new ArrayList<Student>();
}
