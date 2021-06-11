package nshin.spring.mvc.dao;

import nshin.spring.mvc.vo.Reply;

import java.util.List;

public interface BoardReplyDAO {

    List<Reply> selectReply(String bdno);

    int insertComment(Reply r); //댓글작성
    int insertReply(Reply r); //대댓작성
}
