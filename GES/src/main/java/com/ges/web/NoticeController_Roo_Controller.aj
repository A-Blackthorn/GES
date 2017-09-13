// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ges.web;

import com.ges.domain.Notice;
import com.ges.domain.Student;
import com.ges.web.NoticeController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.joda.time.format.DateTimeFormat;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect NoticeController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String NoticeController.create(@Valid Notice notice, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, notice);
            return "notices/create";
        }
        uiModel.asMap().clear();
        notice.persist();
        return "redirect:/notices/" + encodeUrlPathSegment(notice.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String NoticeController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Notice());
        return "notices/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String NoticeController.show(@PathVariable("id") Long id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("notice", Notice.findNotice(id));
        uiModel.addAttribute("itemId", id);
        return "notices/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String NoticeController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("notices", Notice.findNoticeEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) Notice.countNotices() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("notices", Notice.findAllNotices(sortFieldName, sortOrder));
        }
        addDateTimeFormatPatterns(uiModel);
        return "notices/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String NoticeController.update(@Valid Notice notice, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, notice);
            return "notices/update";
        }
        uiModel.asMap().clear();
        notice.merge();
        return "redirect:/notices/" + encodeUrlPathSegment(notice.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String NoticeController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, Notice.findNotice(id));
        return "notices/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String NoticeController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Notice notice = Notice.findNotice(id);
        notice.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/notices";
    }
    
    void NoticeController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("notice_noticedate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    void NoticeController.populateEditForm(Model uiModel, Notice notice) {
        uiModel.addAttribute("notice", notice);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("students", Student.findAllStudents());
    }
    
    String NoticeController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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