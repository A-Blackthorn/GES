package com.ges.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(versionField = "")
public class SchoolMonth {

    /**
     */
    @NotNull
    private String name;

    /**
     */
    @NotNull
    private Boolean paid;
}