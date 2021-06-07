package nshin.spring.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class GalleryController {

    @GetMapping("/gallery/list")
    public String list() {
    return "gallery/list.tiles";
    }

    @GetMapping("/board/view")
    public String view() {
        return "gallery/view.tiles";
    }

    @GetMapping("/board/write")
    public String writelist() {
        return "gallery/write.tiles";
    }

}