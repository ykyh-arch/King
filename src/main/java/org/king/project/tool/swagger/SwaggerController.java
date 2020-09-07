package org.king.project.tool.swagger;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.king.framework.web.controller.WebController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * swagger 接口
 *
 * @author King
 */
@Controller
@RequestMapping("/tool/swagger")
public class SwaggerController extends WebController {

    @RequiresPermissions("tool:swagger:view")
    @GetMapping
    public String index() {
        return redirect("/swagger-ui.html");
    }
}
