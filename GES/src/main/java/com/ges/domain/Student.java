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
public class Student {

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
    private String tel;

    /**
     */
    @ManyToOne
    private Grade grade;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private List<SchoolMonth> schoolMonths = new ArrayList<SchoolMonth>();
}
