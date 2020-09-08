package org.king.project.tool.swagger;

import io.swagger.annotations.*;
import org.king.framework.web.controller.WebController;
import org.springframework.web.bind.annotation.*;
import springfox.documentation.annotations.ApiIgnore;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * swagger 用户测试方法
 *
 * @author King
 */
@Api(value="用户信息管理",hidden=true)
@ApiIgnore
@RestController
@RequestMapping("/test/user")
public class TestController extends WebController {

    private final static Map<Integer, UserEntity> users = new LinkedHashMap<>();

    static {
        users.put(1, new UserEntity(1, "admin", "admin123", "15888888888"));
        users.put(2, new UserEntity(2, "king", "admin123", "15666666666"));
    }

    @ApiOperation("获取用户列表")
    @GetMapping("/list")
    public List<UserEntity> userList() {
        return new ArrayList<>(users.values());
    }

    @ApiOperation("获取用户详细")
    @ApiImplicitParam(name = "userId", value = "用户ID", required = true, dataType = "int", paramType = "path")
    @GetMapping("/{userId}")
    public UserEntity getUser(@PathVariable Integer userId) {
        return users.get(userId);
    }

    @ApiOperation("新增用户")
    @PostMapping("/save")
    public void save(UserEntity user) {
        users.put(user.getUserId(), user);
    }

    @ApiOperation("更新用户")
    @PutMapping("/update")
    public void update(UserEntity user) {
        users.remove(user.getUserId());
    }

    @ApiOperation("删除用户信息")
    @ApiImplicitParam(name = "userId", value = "用户ID", required = true, dataType = "int", paramType = "path")
    @DeleteMapping("/{userId}")
    public void delete(@PathVariable Integer userId) {
        users.remove(userId);
    }
}

@ApiModel("用户实体")
class UserEntity {

    @ApiModelProperty("用户ID")
    private Integer userId;

    @ApiModelProperty("用户名称")
    private String username;

    @ApiModelProperty("用户密码")
    private String password;

    @ApiModelProperty("用户手机")
    private String mobile;

    public UserEntity() {

    }

    public UserEntity(Integer userId, String username, String password, String mobile) {
        this.userId = userId;
        this.username = username;
        this.password = password;
        this.mobile = mobile;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }
}
