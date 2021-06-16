<%@ page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="fnames" value="${fn:split(g.fnames,'/')}" />
<c:set var="fsizes" value="${fn:split(g.fsizes,'/')}" />
<c:set var="baseURL" value="http://localhost/cdn/" />


 <div id="main">

      <div>
          <h3><i class="far fa-file-image"></i> 갤러리</h3>
          <hr>
      </div><!--페이지타이틀-->

      <div>
          <div class="row">
              <div class="col-5 offset-1">
                <button type="button" class="btn btn-light btn-sm"><i class="fas fa-chevron-left"></i> 이전 게시물</button>
                <button type="button" class="btn btn-light btn-sm"><i class="fas fa-chevron-right"></i> 다음 게시물</button>
              </div>

              <div class="col-5 text-right">
                <button type="button" class="btn btn-light"><i class="fas fa-plus-circle"></i> 사진 올리기</button>
              </div>
          </div> <!-- 게시물/사진올리기 버튼 -->

          <div class="row">
              <table class="table col-10 offset-1">
                  <tr class="tbbg1 text-center">
                      <th colspan="2">
                          <h2>${g.title}</h2>
                      </th>
                  </tr>
                   <tr class="tbbg2">
                      <td class="width: 50%">${g.userid}</td>
                      <td class="text-right">${g.regdate} / ${g.thumbup} / ${g.views}</td>
                  </tr>
                  <tr class="tbbg3 text-center">
                      <td colspan="2">
                              <c:forEach var="f" items="${fnames}">
                              <%-- abc.png --%>
                              <c:set var="pos" value="${fn:indexOf(f,'.')}" />
                              <c:set var="fname" value="${fn:substring(f,0,pos)}" />
                              <c:set var="fext" value="${fn:substring(f,pos+1,fn:length(f))}" />
                              <div>
                                <img class="img-fluid" src="${baseURL}${fname}${g.uuid}.${fext}">
                              </div>
                              </c:forEach>
                      </td>
                  </tr><!-- 본문 -->

                  <%-- 첨부파일 표시 --%>

                  <c:forEach begin="0" end="${fn:length(fnames) - 1}" var="i">
                  <tr>
                      <td colspan="2" class="tbbg4">
                          <img src="/img/png.png"> ${fnames[i]} (${fsizes[i]}KB)
                      </td>
                  </tr><!-- 첨부 -->
                  </c:forEach>
              </table>
          </div>

          <div class="row">
              <div class="col-5 offset-1">
               <button type="button" class="btn btn-warning btn-sm text-white"><i class="fas fa-edit"></i> 수정하기</button>
               <button type="button" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i> 삭제하기</button>
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
