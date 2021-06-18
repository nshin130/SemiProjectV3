<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="fname" value="${fn:split(g.fnames,'/')}" />
<!-- 파일이름을 보이게 하게끔 미리 스플릿 -->

<div id="main">

<script src="https://www.google.com/recaptcha/api.js"></script>

      <div>
           <h3><i class="far fa-file-image"></i> 갤러리</h3>
          <hr>
      </div><!--페이지타이틀-->

      <div class="row">
        <div class="col-5 offset-1">
            <h4><i class="fas fa-edit"> 수정 하기 </i></h4>
        </div>
        <div class="col-5 text-right">
          <button type="button" class="btn btn-light">
              <i class="fas fa-list"></i> 목록으로</button>
        </div>

      <div class="card card-body bg-light col-10 offset-1">
          <form name="modgalfrm" id="modgalfrm">
                    <div class="form-group row">
                        <label for="title" class="text-danger col-form-label text-right col-2">제목</label>
                        <input type="text" id="title" name="title"
                               class="border-danger form-control col-9" value="${g.title}">
                    </div>

                    <div class="form-group row">
                        <label for="userid" class="text-danger col-form-label text-right col-2">작성자</label>
                        <input type="text" id="userid" name="userid"
                               class="border-danger form-control col-9"
                               readonly value="${g.userid}">
                    </div>
                    <div class="form-group row">
                        <label for="contents"
                               class="text-right text-danger col-form-label col-2">본문내용</label>
                        <textarea id="contents" name="contents" rows="15"
                                  class="border-danger form-control col-9">${g.contents}</textarea>
                    </div>

                    <div class="form-group row">
                        <label for="file1" class="text-right text-danger col-form-label col-2">
                            파일첨부
                        </label>

                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" id="die1" class="custom-control-input">
                            <label for="die1" class="custom-control-label"></label>
                        </div>
                        <div class="custom-file col-8">
                            <input type="file" name="img" id="file1"
                                   class="custom-file-input" disabled>
                            <label class="custom-file-label">${fname[0]}</label>
                        </div>
                    </div>

                    <div class="form-group row">
                        <div class="custom-control custom-checkbox offset-2">
                            <input type="checkbox" id="die2" class="custom-control-input">
                            <label for="die2" class="custom-control-label"></label>
                        </div>
                        <div class="custom-file col-8">
                            <input type="file" name="img" id="file2"
                                   class="custom-file-input" disabled>
                            <label class="custom-file-label">${fname[1]}</label>
                        </div>
                    </div>

                    <div class="form-group row">
                        <div class="custom-control custom-checkbox offset-2">
                            <input type="checkbox" id="die3" class="custom-control-input">
                            <label for="die3" class="custom-control-label"></label>
                        </div>
                        <div class="custom-file col-8">
                            <input type="file" name="img" id="file3"
                                   class="custom-file-input" disabled>
                            <label class="custom-file-label">${fname[2]}</label>
                        </div>
                    </div>


                    <!-- 자동가입방지 -->
                    <div class="form-group row">
                        <label class="text-danger col-form-label text-right col-2">자동<br>입력방지</label>
                        <div class="g-recaptcha" data-sitekey="6LdjIwgbAAAAADR_OcUJETHsPvtg6PB5ycg6Z9Zz"></div>
                        <input type="hidden" id="g-recaptcha" name="g-recaptcha" />
                    </div>

            <hr class="col-10">
            <div class="col-12 text-center">
                <button type="button" id="modgal" class="btn btn-primary btn-sm">
                    <i class="fas fa-check"></i> 입력완료</button>
                <button type="reset" class="btn btn-danger btn-sm">
                    <i class="fas fa-times"></i> 취소하기</button>
            </div><!-- 버튼들 -->

            <!-- 첨부파일 수정여부를 저장하기 위한 변수 -->
            <input type="hidden" name="todie" id="todie">
            <!-- uuid 저장하기 위한 변수 -->
            <input type="hidden" name="uuid" value="${g.uuid}">
            <input type="hidden" name=gno value="${g.gno}">

          </form> <!-- form -->
      </div> <!-- card body -->


      </div>


  </div>