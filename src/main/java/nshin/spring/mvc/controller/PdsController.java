package nshin.spring.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PdsController {

    @GetMapping("/pds/list")
    public String list() {
    return "pds/list.tiles";
    }

    @GetMapping("/board/view")
    public String view() {
        return "pds/view.tiles";
    }

    @GetMapping("/board/write")
    public String writelist() {
        return "pds/write.tiles";
    }

}
