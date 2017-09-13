package com.ges.web;
import com.ges.domain.NonAttendance;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/nonattendances")
@Controller
@RooWebScaffold(path = "nonattendances", formBackingObject = NonAttendance.class)
public class NonAttendanceController {
}
