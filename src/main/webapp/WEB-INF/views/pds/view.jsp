<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

 <style>
    .tbbg1{background: #dff0f8}
    .tbbg2{background: #D5F5E3}
    .tbbg3{background: #dff0f8}
    .pushdwn{ margin-top: 50px}
    .cmtbg1{background: #dff0f8; padding:4px 0}
    .cmtbg2{background: #FCE4EC; padding:4px 0}
    .pushright{float: right}
</style>

<c:if test="${param.pno eq 'null' or empty param.pno }">
    <script>alert('잘못된 페이지 요청입니다'); location.href='/pds/list?cp=1'</script>
</c:if>

<%--첨부파일 아이콘 선택--%>
<c:set var="atticon1" value="${p.ftype1}" />
<c:if test="${p.ftype1 ne 'zip' and p.ftype1 ne 'jpg' and p.ftype1 ne 'txt'}">
    <c:set var="atticon1" value="file" />
</c:if>

<c:set var="atticon2" value="${p.ftype2}" />
<c:if test="${p.ftype2 ne 'zip' and p.ftype2 ne 'jpg' and p.ftype2 ne 'txt'}">
    <c:set var="atticon2" value="file" />
</c:if>

<c:set var="atticon3" value="${p.ftype3}" />
<c:if test="${p.ftype3 ne 'zip' and p.ftype3 ne 'jpg' and p.ftype3 ne 'txt'}">
    <c:set var="atticon3" value="file" />
</c:if>

<div id="main">

  <div>
      <h3><i class="fas fa-save"></i> 자료실</h3>
      <hr>
  </div><!--페이지타이틀-->


  <div>
      <div class="row">
          <div class="col-5 offset-1">
            <button type="button" class="btn btn-light btn-sm" id="pdprvbtn">
                <i class="fas fa-chevron-left"></i> 이전 게시물</button>
            <button type="button" class="btn btn-light btn-sm" id="pdnxtbtn">
                <i class="fas fa-chevron-right"></i> 다음 게시물</button>
          </div>

          <div class="col-5 text-right">
            <button type="button" class="btn btn-light" >
                <i class="fas fa-plus-circle"></i> 새글 쓰기</button>
          </div>
      </div> <!-- 새글쓰기/검색관련 버튼 -->

      <div class="row">
          <table class="table col-10 offset-1">
              <tr class="tbbg1 text-center">
                  <th colspan="2">
                      <h2>${p.title}</h2>
                  </th>
              </tr>
               <tr class="tbbg2">
                  <td class="width: 50%">${p.userid}</td>
                  <td class="text-right">${p.regdate} / ${p.thumbup} / ${p.views}</td>
              </tr>
              <tr class="tbbg3 bdcsize">
                  <td colspan="2">
                      ${p.contents}
                  </td>
              </tr><!-- 본문 -->

              <tr>
                  <td colspan="2" class="tbbg4 patxt"> 첨부1 &nbsp;&nbsp;
                      <img src="/img/${atticon1}.png" >
                      <a href="/pds/down?pno=${p.pno}&order=1">${p.fname1}</a>
                      (${p.fsize1}KB , ${p.fdown1}회 다운로드함)
                  </td>
              </tr>

              <c:if test="${p.fname2 ne '-'}">
              <tr>
                  <td colspan="2" class="tbbg5 patxt"> 첨부2 &nbsp;&nbsp;
                      <img src="/img/${atticon2}.png" >
                      <a href="/pds/down?pno=${p.pno}&order=2">${p.fname2}</a>
                      (${p.fsize2}KB , ${p.fdown2}회 다운로드함)
                  </td>
              </tr>
              </c:if>
              <c:if test="${p.fname3 ne '-'}">
              <tr>
                  <td colspan="2" class="tbbg6 patxt"> 첨부3 &nbsp;&nbsp;
                      <img src="/img/${atticon3}.png" >
                      <a href="/pds/down?pno=${p.pno}&order=3">${p.fname3}</a>
                      (${p.fsize3}KB , ${p.fdown3}회 다운로드함)
                  </td>
              </tr>
              </c:if>
          </table>
      </div>

      <div class="row">
          <div class="col-5 offset-1">
           <button type="button" class="btn btn-warning btn-sm text-white"><i class="fas fa-edit"></i> 수정하기</button>
           <button type="button" class="btn btn-danger btn-sm" id="pdrmvbtn"><i class="fas fa-trash"></i> 삭제하기</button>
          </div>
          <div class="col-5 text-right">
              <button type="button" class="btn btn-success btn-sm" id="pdthumbtn">
                  <i class="fas fa-thumbs-up"></i> 추천하기 </button>

              <button type="button" class="btn btn-primary btn-sm">
                  <i class="fas fa-list"></i> 목록으로</button>
        </div>
        <input type="hidden" id="pno" value="${param.pno}" />
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
    