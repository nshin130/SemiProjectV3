package nshin.spring.mvc.controller;

import nshin.spring.mvc.service.BoardReplyService;
import nshin.spring.mvc.service.BoardService;
import nshin.spring.mvc.vo.Board;
import nshin.spring.mvc.vo.Reply;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoardController {

     private BoardService bsrv;
     private BoardReplyService brsrv;
    //만약 여러개의 객체를 가져와야 할경우-> 생성자릉 이용하면 편리함 (@autowired 해제하고 밑에처럼만들면됨)

    @Autowired
    public BoardController(BoardService bsrv, BoardReplyService brsrv) {
        this.bsrv = bsrv;
        this.brsrv = brsrv;
    }

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

        bsrv.viewCountBoard(bdno); //조회수 처리

        mv.setViewName("board/view.tiles");
        mv.addObject("bd", bsrv.readOneBoard(bdno));
        mv.addObject("rps", brsrv.readReply(bdno));

        return mv;
    } // 보드 리플 컨트롤러 따로 없이 view출력될떄 댓글도 같이 출력되어야 하기 떄문

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

    //댓글쓰기
    @PostMapping("/reply/write")
    public String replyok(Reply r) {
        String returnPage = "redirect:/board/view?bdno=" + r.getBdno();

        brsrv.newComment(r);

        return returnPage;
    }

    @PostMapping("/rreply/write")
    public String rreplyok(Reply r) {
        String returnPage = "redirect:/board/view?bdno=" + r.getBdno();

        brsrv.newReply(r);

        return returnPage;
    }

}
