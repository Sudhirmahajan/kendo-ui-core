package com.kendoui.spring.controllers.polarcharts;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("dataviz-polar_charts-polar_area-controller")
@RequestMapping(value="/dataviz/polar-charts/")
public class PolarAreaController {
    @RequestMapping(value = "/polar-area", method = RequestMethod.GET)
    public String index() {
        return "/dataviz/polar-charts/polar-area";
    }
}
