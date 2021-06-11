<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%--
    게시판 댓글 처리 : reply
    댓글번호     댓글내용   작성자         작성일     부모글번호   대댓글번호
    1           hi        buzz       20210611    100           1
    4           왜영어씀   slinky     20210611    100            1
    2           방가      woody       20210611    100           2
    3           하이       123        20210611    100           3

    => 댓글 출렷 순서는 부모글 번호로 추려낸 후 부모댓글번호로 정렬

--%>

<%-- 줄바꿈 기호를 변수로 생성:br 태그변환 필요 --%>
<c:set var="newChar" value="
" scope="application"/>


<div id="main">

          <div>
              <h3><i class="fas fa-comments"></i> 자유 게시판</h3>
              <hr>
          </div><!--페이지타이틀-->

          <div>
              <div class="row">
                  <div class="col-5 offset-1">
                    <button type="button" class="btn btn-light btn-sm"><i class="fas fa-chevron-left"></i> 이전 게시물</button>
                    <button type="button" class="btn btn-light btn-sm"><i class="fas fa-chevron-right"></i> 다음 게시물</button>
                  </div>

                  <div class="col-5 text-right">
                    <button type="button" class="btn btn-light"><i class="fas fa-plus-circle"></i> 새글 쓰기</button>
                  </div>
              </div> <!-- 새글쓰기/검색관련 버튼 -->

              <div class="row">
                  <table class="table col-10 offset-1">
                      <tr class="tbbg1 text-center">
                          <th colspan="2">
                              <h2>${bd.title}</h2>
                          </th>
                      </tr>
                       <tr class="tbbg2">
                          <td class="width: 50%">${bd.userid}</td>
                          <td class="text-right"> ${bd.regdate}/ ${bd.thumbup} / ${bd.views} </td>
                      </tr>
                      <tr class="tbbg3 bdcsize">
                          <td colspan="2">
                              ${fn:replace(bd.contents, newChar, "<br>")}
                          </td>
                      </tr>
                  </table>
              </div>

              <div class="row">
                  <div class="col-5 offset-1">
                   <%-- 자신이 작성한 글에 대해서만 수정/삭제 버튼이 표시되어야함 --%>
                     <c:if test="${not empty UID and UID eq bd.userid}">
                       <button type="button"
                               class="btn btn-warning btn-sm text-white" >
                           <i class="fas fa-edit"></i> 수정하기</button>

                       <button type="button"
                               class="btn btn-danger btn-sm">
                           <i class="fas fa-trash"></i> 삭제하기</button>
                     </c:if>
                </div>

                <div class="col-5 text-right">
                  <button type="button" class="btn btn-light btn-sm"><i class="fas fa-list"></i> 목록으로</button>
                </div>
              </div><!-- buttons -->

          </div><!-- contents -->



          <div>

            <div class="row">
                <h5 class="col-10 offset-1"><i class="far fa-comments"></i> 나도 한마디</h5>
            </div>

            <table class="table col-10 offset-1">
                <c:forEach var="r" items="${rps}">
                    <c:if test="${r.rno eq r.rpno}">
                    <tr>
                        <td><h6>${r.userid}</h6></td>
                        <td><div class="cmtbg1">${r.regdate}
                        <span style="float:right">
                        <c:if test="${not empty UID}">
                            <a href="javascript:addReply('${r.rno}')"> [추가] </a></c:if>
                            <c:if test="${UID eq r.userid}">[수정] [삭제]</c:if></span></div>
                            <p>${r.reply}</p>
                        </td>
                    </tr>
                    </c:if> <%-- 댓글 --%>

                    <c:if test="${r.rno ne r.rpno}">
                    <tr>
                        <td></td>
                        <td><div class="cmtbg2"><span>${r.userid}</span>
                            <span class="pushright">${r.regdate}</span></div>
                            <p>${r.reply}</p>
                        </td>
                    </tr>
                    </c:if> <%-- 대댓글 --%>
                </c:forEach>
               <!-- rps: boardController에서 넘긴 이름 -->

            </table> <!-- 댓글창 테이블 -->

          </div>

          <div class="row">
                <form name="replyfrm" id="replyfrm" class="card card-body bg-light col-10 offset-1">
                    <div class="form-group row justify-content-center">
                        <label for="reply" class="col-form-label col-2 pushdwn">${UID}</label>
                        <textarea class="form-control col-7" name="reply" id="reply" rows="5" ></textarea>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <button type="button" id="newbrbtn"
                                class="form-control btn btn-dark btn-sm pushdwn col-2">
                            <i class="fas fa-comment-dots"></i> 댓글 작성</button>
                    </div>
                    <input type="hidden" name="userid" value="${UID}" />
                    <input type="hidden" name="bdno" value="${param.bdno}" />
                                        <!-- 주소창에 있는 애: param으로 받아 올 수 있음 -->
                </form> <!-- 댓글 폼 -->
            </div> <!-- 댓글쓰기 -->

      </div><!-- main -->

<!-- 대댓글 작성을 위한 모달대화상자 -->
<div class="modal hide" id="replyModal" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">대댓글 쓰기</h5>
            </div>

            <div class="modal-body">
                <form name="rpfrm" id="rpfrm" class="well form-inline">
                    <textarea name="reply" id="rreply" rows="8"
                              cols="75" class=""></textarea>
                    <input type="hidden" name="userid" value="${UID}">
                    <input type="hidden" name="bdno" value="${param.bdno}">
                    <input type="hidden" name="rpno" id="rpno">
                </form>
            </div>

            <div class="modal-footer">
                <button type="button" id="newrrpbtn"
                        class="btn btn-secondary btn-sm">대댓글 작성</button>
            </div>
        </div>
    </div>
</div>