<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div id="main">

<script src="https://www.google.com/recaptcha/api.js"></script>

  <div>
      <h3><i class="fas fa-comments"></i> 자유 게시판</h3>
      <hr>
  </div><!--페이지타이틀-->

  <div class="row">
    <div class="col-5 offset-1">
        <h4><i class="fas fa-plus-circle"> 새글 쓰기</i></h4>
    </div>
    <div class="col-5 text-right">
      <button type="button" id="listbdbtn" class="btn btn-light"><i class="fas fa-list"></i> 목록으로</button>
    </div>

  <div class="card card-body bg-light col-10 offset-1">
      <form name="boardfrm" id="boardfrm">
                <div class="form-group row">
                    <label for="title" class="text-danger col-form-label text-right col-2">제목</label>
                    <input type="text" id="title" name="title" class="border-danger form-control col-9">
                </div>
                <div class="form-group row">
                    <label for="userid" class="text-danger col-form-label text-right col-2">작성자</label>
                    <input type="text" id="userid" name="userid"
                           class="border-danger form-control col-9" value="${UID}" readonly>
                </div>
                <div class="form-group row">
                    <label for="contents" class="text-right text-danger col-form-label col-2">본문내용</label>
                    <textarea id="contents" name="contents" rows="15" class="border-danger form-control col-9"></textarea>
                </div>

                <div class="form-group row">
                    <label class="col-form-label col-2 text-right text-danger">
                          자동가입방지</label>
                    <div class="g-recaptcha"
                           data-sitekey="6LdjIwgbAAAAADR_OcUJETHsPvtg6PB5ycg6Z9Zz"></div>
                    <input type="hidden" id="g-recaptcha" name="g-recaptcha"/>
                </div>

        <hr class="col-10">
        <div class="col-12 text-center">
            <button type="button" id="savebdbtn"
                    class="btn btn-primary btn-sm"><i class="fas fa-check"></i> 입력완료</button>
            <button type="reset" id="" class="btn btn-danger btn-sm">
                <i class="fas fa-times"></i> 다시입력</button>
        </div><!-- 버튼들 -->

      </form> <!-- form -->
  </div> <!-- card body -->


  </div>


</div>