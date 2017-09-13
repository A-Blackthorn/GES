package com.ges.web;
import com.ges.domain.Mark;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/marks")
@Controller
@RooWebScaffold(path = "marks", formBackingObject = Mark.class)
public class MarkController {
}
