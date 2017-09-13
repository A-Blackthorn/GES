package com.ges.web;
import com.ges.domain.Notice;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/notices")
@Controller
@RooWebScaffold(path = "notices", formBackingObject = Notice.class)
public class NoticeController {
}
