<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!--
    데이터가 너무 많아 한페이지에 출력하기 여려운 경우
    페이징을 이용해서 전체데이터를 일정한 범위로 나누고
    특정 범위의데이터만 출력하는것이 효율적임

    총 데이터 수: 105, 한페이지당 출력할 게시글 수: 25개
    총 페이지 수: 5페이지
    cp 라는 질의문자 이용 (current page)
-->
<!--
    게시판 네비게이션
    현재 페이지에 따라 보여줄 페이지 블럭을 결정
    ig) 총 페이지 수가 27일때
    cp = 1 : 1 2 3 4 5 6 7 8 9 10
    cp = 2 : 1 2 3 4 5 6 7 8 9 10
    cp = 9 : 1 2 3 4 5 6 7 8 9 10
    cp = 11 : 11 12 13 14 15 16 17 18 19 20
    cp = 17 : 11 12 13 14 15 16 17 18 19 20
    cp = 23 : 21 22 23 24 25 26 27
    따하서, cp에 따라 페이지 블럭의 시작값을 계산
    perpage = 30
    startpage =  ((cp - 1) / 10) * 10 + 1
    endpage = startpage + 9
    (cp:독립변수 startpage:종속변수)
-->

<fmt:parseNumber var="cp" value="${param.cp}" />
<fmt:parseNumber var="sp" value="${(cp-1)/10}" integerOnly="true"/> <%--소수점자르기 --%>
<fmt:parseNumber var="sp" value="${sp * 10 + 1}" />
<fmt:parseNumber var="ep" value="${sp+9}" />

<%-- 총 게시물 수를 페이지당 게시물 수로 나눔 : 총페이지 수 --%>
<fmt:parseNumber var="tp" value="${bdcnt / 30}" integerOnly="true"/>
<c:if test="${(bdcnt % 30) > 0 }">
    <fmt:parseNumber var="tp" value="${tp + 1}" />
</c:if>

<%-- 글 번호 --%>
<fmt:parseNumber var="snum" value="${bdcnt - (cp -1) * 30}" />

<%-- 페이지 링크: 검색기능 x --%>
<c:set var ="pglink" value="/board/list?cp=" />

<%-- 페이지 링크: 검색기능 o --%>
<c:if test="${not empty param.findkey}">
    <c:set var="pglink" value="/board/find?findtype=${param.findtype}&findkey=${param.findkey}&cp=" />
</c:if>

<div id="main">
  <div>
      <h3><i class="fas fa-comments"></i> 자유 게시판 ${tp} / ${bdcnt} </h3>
      <hr>
  </div><!--페이지타이틀-->

  <div class="row">

    <div class="col-5 offset-1">
        <div class="form-group row border-danger">
            <select class="form-control col-3 border-dark" name="findtype" id="findtype">
                <option value="title">제목</option>
                <option value="ttlcont">제목+내용</option>
                <option value="userid">작성자</option>
                <option value="contents">내용</option>
            </select>&nbsp;
            <input type="text" name="findkey" id="findkey"
                   class="form-control col-5 border-dark" value="${param.findkey}">&nbsp;
            <button type="button" id="findbtn" class="btn btn-dark btn-sm">
                <i class="fas fa-search"></i> 검색</button>
        </div>
    </div>

    <div class="col-5 text-right">
      <button type="button" class="btn btn-light" id="newbdbtn">
          <i class="fas fa-plus-circle"></i> 새글 쓰기</button>
    </div>

  </div> <!-- 새글쓰기/검색관련 버튼 -->

  <div class="row">
      <div class="col-10 offset-1">
          <table class="table table-striped text-center table-hover">
              <thead>
                  <tr>
                      <th style="width: 7%">번호</th>
                      <th style="">제목</th>
                      <th style="width: 12%">작성자</th>
                      <th style="width: 10%">작성일</th>
                      <th style="width: 7%">추천</th>
                      <th style="width: 7%">조회</th>
                  </tr>
              </thead>

              <tbody>
                  <tr class="text-danger">
                      <th scope="row">공지</th>
                      <th>
                          <span class="badge badge-danger text-white">Hot</span>
                          '다크나이트 라이즈'예매권 증정 이벤트 실시!!</th>
                      <th>운영자</th>
                      <th>2021.05.21</th>
                      <th>10</th>
                      <th>521</th>
                  </tr>

                  <c:forEach var="bd" items="${bds}">
                  <tr>
                      <td>${snum}</td>
                      <td><a href="/board/view?bdno=${bd.bdno}">${bd.title}</a></td>
                      <td>${bd.userid}</td>
                      <td>${fn:substring(bd.regdate,0,10)}</td>
                      <td>${bd.thumbup}</td>
                      <td>${bd.views}</td>
                      <c:set var="snum" value="${snum-1}" />
                  </tr>
                  </c:forEach>


              </tbody>
          </table>
      </div>
  </div> <!-- 리스트 -->


  <div class="row">
      <div class="col-12">
          <ul class="pagination justify-content-center">

              <%-- 이전버튼이 작동되어야 할때는 sp가 11 보다 클때 --%>
              <li class="page-item <c:if test="${sp lt 11}">disabled</c:if>">
                  <a href="${pglink}${sp-10}" class="page-link">이전</a></li>

              <%-- 반복문을 이용해 페이지 링크 생성 --%>
              <c:forEach var="i" begin="${sp}" end="${ep}" step="1">
                  <%-- 표시되는 페이지 i가 총페이지수보다 작거나는같을 동안만 출력 --%>
                  <c:if test="${i le tp}">
                      <c:if test="${cp eq i}" >
                      <li class="page-item active">
                          <a href="${pglink}${i}" class="page-link">${i}</a></li>
                      </c:if>

                      <c:if test="${cp ne i}" >
                        <li class="page-item">
                            <a href="${pglink}${i}" class="page-link">${i}</a></li>
                      </c:if>
                  </c:if>
              </c:forEach>

              <%-- 다음버튼이 작동되어야 할때는 --%>
              <li class="page-item <c:if test="${ep gt tp}">disabled</c:if>">
                  <a href="${pglink}${sp+10}" class="page-link">다음</a></li>



          </ul>
      </div>
  </div><!-- pagination -->

</div> <!-- main -->