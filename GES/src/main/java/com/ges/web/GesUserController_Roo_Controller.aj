// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ges.web;

import com.ges.domain.GesUser;
import com.ges.domain.Profile;
import com.ges.web.GesUserController;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect GesUserController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String GesUserController.create(@Valid GesUser gesUser, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, gesUser);
            return "gesusers/create";
        }
        uiModel.asMap().clear();
        gesUser.persist();
        return "redirect:/gesusers/" + encodeUrlPathSegment(gesUser.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String GesUserController.createForm(Model uiModel) {
        populateEditForm(uiModel, new GesUser());
        List<String[]> dependencies = new ArrayList<String[]>();
        if (Profile.countProfiles() == 0) {
            dependencies.add(new String[] { "profile", "profiles" });
        }
        uiModel.addAttribute("dependencies", dependencies);
        return "gesusers/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String GesUserController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("gesuser", GesUser.findGesUser(id));
        uiModel.addAttribute("itemId", id);
        return "gesusers/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String GesUserController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("gesusers", GesUser.findGesUserEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) GesUser.countGesUsers() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("gesusers", GesUser.findAllGesUsers(sortFieldName, sortOrder));
        }
        return "gesusers/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String GesUserController.update(@Valid GesUser gesUser, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, gesUser);
            return "gesusers/update";
        }
        uiModel.asMap().clear();
        gesUser.merge();
        return "redirect:/gesusers/" + encodeUrlPathSegment(gesUser.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String GesUserController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, GesUser.findGesUser(id));
        return "gesusers/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String GesUserController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        GesUser gesUser = GesUser.findGesUser(id);
        gesUser.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/gesusers";
    }
    
    void GesUserController.populateEditForm(Model uiModel, GesUser gesUser) {
        uiModel.addAttribute("gesUser", gesUser);
        uiModel.addAttribute("profiles", Profile.findAllProfiles());
    }
    
    String GesUserController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
