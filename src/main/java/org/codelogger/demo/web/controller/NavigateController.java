package org.codelogger.demo.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.codelogger.web.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NavigateController extends BaseController {

    @RequestMapping(value = { "{page}", "{page}.html" })
    public String forwardToValidate(final HttpServletRequest request,
            @PathVariable final String page) {

        return page;
    }

    @RequestMapping(value = { "{first}/{second}", "{first}/{second}.html" })
    public String forwardToValidate(final HttpServletRequest request,
            @PathVariable final String first, @PathVariable final String second) {

        return String.format("%s/%s", first, second);
    }

}
