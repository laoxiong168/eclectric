package com.mysiteforme.admin.controller.web;

import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Name: ElectrolicController
 * @Description: 功能描述
 * @Copyright: Copyright (c) 2018
 * @Author: xiongzhenyu
 * @Create Date : 2019/3/29 17:49
 * @Version: 1.0.0
 */
@RequestMapping("electrolic")
@Controller
public class ElectrolicController {

    @PostMapping("/save")
    @ResponseBody
    public Map<String, Object> saveData(HttpServletRequest request) {

        return null;
    }
}
