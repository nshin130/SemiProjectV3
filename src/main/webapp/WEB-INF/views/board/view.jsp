<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
                <tr>
                    <td><h6>nshin130</h6></td>
                    <td><div class="cmtbg1">2021.05.21 10:50:10</div>
                        <p>Integer ullamcorper elementum commodo. Etiam lobortis pretium mi, ut condimentum ipsum rutrum vel.</p>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><div class="cmtbg2"><span>nshin130</span>
                        <span class="pushright">2021.05.21 10:50:10</span></div>
                        <p>Integer ullamcorper elementum commodo. Etiam lobortis pretium mi, ut condimentum ipsum rutrum vel.</p>
                    </td>
                </tr>
                <tr>
                    <td><h6>nshin130</h6></td>
                    <td><div class="cmtbg1">2021.05.21 10:50:10</div>
                        <p>Integer ullamcorper elementum commodo. Etiam lobortis pretium mi, ut condimentum ipsum rutrum vel.</p>
                    </td>
                </tr>
                <tr>
                    <td><h6>nshin130</h6></td>
                    <td><div class="cmtbg1">2021.05.21 10:50:10</div>
                        <p>Integer ullamcorper elementum commodo. Etiam lobortis pretium mi, ut condimentum ipsum rutrum vel.</p>
                    </td>
                </tr>
                <tr>
                    <td><h6>nshin130</h6></td>
                    <td><div class="cmtbg1">2021.05.21 10:50:10</div>
                        <p>Integer ullamcorper elementum commodo. Etiam lobortis pretium mi, ut condimentum ipsum rutrum vel.</p>
                    </td>
                </tr>
                <tr>
                    <td><h6>nshin130</h6></td>
                    <td><div class="cmtbg1">2021.05.21 10:50:10</div>
                        <p>Integer ullamcorper elementum commodo. Etiam lobortis pretium mi, ut condimentum ipsum rutrum vel.</p>
                    </td>
                </tr>
                <tr>
                    <td><h6>nshin130</h6></td>
                    <td><div class="cmtbg1">2021.05.21 10:50:10</div>
                        <p>Integer ullamcorper elementum commodo. Etiam lobortis pretium mi, ut condimentum ipsum rutrum vel.</p>
                    </td>
                </tr>
            </table> <!-- 댓글창 테이블 -->

          </div>

          <div class="row">
                <form name="replyfrm" id="replyfrm" class="card card-body bg-light col-10 offset-1">
                    <div class="form-group row justify-content-center">
                        <label for="reply" class="col-form-label col-2 pushdwn">작성자</label>
                        <textarea class="form-control col-7" name="reply" id="reply" rows="5" ></textarea>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <button type="button" class="form-control btn btn-dark btn-sm pushdwn col-2"><i class="fas fa-comment-dots"></i> 댓글 작성</button>
                    </div>

                </form>
            </div> <!-- 댓글쓰기 -->

      </div><!-- main -->

