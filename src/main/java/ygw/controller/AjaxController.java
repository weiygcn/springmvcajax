package ygw.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import ygw.vo.User;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
public class AjaxController {
    @RequestMapping("/checkName")
    public void checkName(String username,HttpServletResponse resp) throws IOException {
        resp.setContentType("text/html;charset=uft-8");
        if ("ygw".equals(username)){
            resp.getWriter().print("1");
        }else{
            resp.getWriter().print("0");
        }
    }
    @RequestMapping("/list")
    @ResponseBody
    public List<User> list()
    {
        List<User> list = new ArrayList();
        list.add(new User(1,"ygw",25));
        list.add(new User(2,"ytt",23));
        list.add(new User(3,"ygq",22));
        return list;
    }
}
