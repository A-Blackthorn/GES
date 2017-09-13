package com.ges.web;
import com.ges.domain.Exam;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/exams")
@Controller
@RooWebScaffold(path = "exams", formBackingObject = Exam.class)
public class ExamController {
}
