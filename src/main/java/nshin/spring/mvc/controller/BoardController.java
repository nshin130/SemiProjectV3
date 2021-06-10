package nshin.spring.mvc.controller;

import nshin.spring.mvc.service.BoardService;
import nshin.spring.mvc.vo.Board;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoardController {

    @Autowired private BoardService bsrv;

    @GetMapping("/board/list")
    public ModelAndView list(ModelAndView mv, String cp) {
        if (cp == null) cp = "1";
        mv.setViewName("board/list.tiles");
        mv.addObject("bds",bsrv.readBoard(cp));
        mv.addObject("bdcnt",bsrv.countBoard());

    return mv;
    }

    @GetMapping("/board/view")
    public ModelAndView view(String bdno, ModelAndView mv) {

        mv.setViewName("board/view.tiles");
        mv.addObject("bd", bsrv.readOneBoard(bdno));
        bsrv.viewCountBoard(bdno); //조회수 처리

        return mv;
    }

    @GetMapping("/board/write")
    public String write() {
        return "board/write.tiles";
    }

    @PostMapping("/board/write")
    public String writeok(Board bd) {
        String returnPage = "redirect:/board/list";

        if (bsrv.newBoard(bd));

        return returnPage;
    }

    // search func
    @GetMapping("/board/find")
    public ModelAndView find(ModelAndView mv, String cp, String findtype, String findkey) {

        mv.setViewName("board/list.tiles");
        mv.addObject("bds", bsrv.readBoard(cp, findtype, findkey));
        mv.addObject("bdcnt", bsrv.countBoard(findtype,findkey));

        return mv;
    }

}
