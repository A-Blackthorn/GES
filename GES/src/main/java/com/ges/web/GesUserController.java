package com.ges.web;
import com.ges.domain.GesUser;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/gesusers")
@Controller
@RooWebScaffold(path = "gesusers", formBackingObject = GesUser.class)
public class GesUserController {
}
