package org.king.project.system.user.controller;

import java.time.LocalDate;
import java.util.List;

import org.king.common.utils.StringUtils;
import org.king.framework.springboot.properties.KingProperties;
import org.king.framework.web.controller.WebController;
import org.king.project.system.menu.domain.Menu;
import org.king.project.system.menu.service.IMenuService;
import org.king.project.system.user.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

/**
 * 首页 业务处理
 *
 * @author King
 */
@Controller
public class IndexController extends WebController {

    @Autowired
    private IMenuService menuService;

    @Autowired
    private KingProperties kingConfig;

    // 系统首页
    @GetMapping("/index")
    public String index(ModelMap mmap) {
        // 取身份信息
        User user = getSysUser();
        // 根据用户id取出菜单
        List<Menu> menus = menuService.selectMenusByUser(user);
        mmap.put("menus", menus);
        mmap.put("user", user);
        mmap.put("copyRightYear", LocalDate.now().getYear());
        mmap.put("demoEnabled", kingConfig.getDemo().isEnabled());

        return "index";
    }

    // 系统介绍
    @GetMapping("/system/main")
    public String main() {
        return "main";
    }

}
