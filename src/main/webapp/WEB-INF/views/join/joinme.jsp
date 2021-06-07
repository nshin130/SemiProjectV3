<%@ page pageEncoding="UTF-8"%>
    
      <div id="main">
      
      <script src="https://www.google.com/recaptcha/api.js"></script>
      
          <div>
              <i class="fas fa-users">회원가입</i>
              <hr>
          </div><!-- 페이지 타이틀 -->

          <nav aria-label="breadcrumb">
              <ul class="breadcrumb">
                  <li class="breadcrumb-item active"><button type="button" disabled class="btn btn-success">이용약관</button></li>
                  <li class="breadcrumb-item active"><button type="button" disabled class="btn btn-success">가입인증</button></li>
                  <li class="breadcrumb-item active"><button type="button" disabled class="btn btn-success">회원정보입력</button></li>
                  <li class="breadcrumb-item"><button type="button" disabled class="btn btn-light">가입완료</button></li>
              </ul>
          </nav> <!-- nav breadcrumb-->

          <div>
              <h3>회원정보입력</h3>
              <small muted>회원정보는 개인정보 취급방침에 따라 안전하게 보호되며, 회원님의 명백한 동의없이 공개 또는 제3자에게 제공되지 않습니다.</small>
              <hr>
          </div><!-- 회원정보 입력-->

          <div class="card card-body bg-light">
            <h5>일반회원</h5>
            <form name="joinfrm" id="joinfrm">
                <div class="row">
                    <div class="col-11 offset-1">
                    <div class="form-group row">
                        <label for="name" class="col-2 col-form-label text-danger text-right">이름</label>
                        <input type="text" class="col-2 form-control  border-danger" readonly name="name" id="name">
                    </div><!--이름-->
                    <div class="form-group row">
                        <label for="ssn3" class="col-2 text-right text-danger col-form-label">주민등록번호</label>
                        <input type="text" class="border-danger form-control col-2" name="ssn" id="ssn3" readonly>
                        <span class="col-form-label">&nbsp;&#45;&nbsp;</span>
                        <input type="password" class="border-danger form-control col-2" name="ssn" id="ssn4" readonly>
                    </div><!--주민번호-->
                    <div class="form-group row">
                        <label for="userid" class="text-danger text-right col-form-label col-2">아이디</label>
                        <input type="text" name="userid" id="userid" class="border-danger form-control col-3">
                        <span class="col-form-label"><small class="text muted ">&nbsp; 8~16자의 영문 소문자,숫자와 특수기호&#40;&#95;&#41; 만 사용할 수 있습니다.</small></span>
                    </div><!--아이디-->
                    <div class="form-group row">
                        <label for="pwd" class="text-danger col-form-label col-2 text-right">비밀번호</label>
                        <input type="password" name="pwd" id="pwd" class="border-danger form-control col-3">
                        <span class="col-form-label"><small class="text muted">&nbsp; 8~16 자의 영문 대소문자&#44;숫자 및 특수문자 사용할 수 있습니다.</small></span>
                    </div><!--비번-->
                    <div class="form-group row">
                        <label for="pwdchk" class="text-danger col-form-label text-right col-2">비밀번호 확인</label>
                        <input type="password" name="pwdchk" id="pwdchk" class="border-danger form-control col-3">
                        <span class="col-form-label"><small class="text muted">&nbsp; 이전 항목에서 입력했던 비밀번호를 한번 더 입력하세요.</small></span>
                    </div><!--비번확인-->
                    <div class="form-group row">
                        <label for="zipcode" class="text-right text-danger col-form-label col-2" >우편번호</label>
                        <input type="text" name="zip1" id="zip1" class="border-danger form-control col-1" readonly>
                        <span class="col-form-label">&nbsp;&#45;&nbsp;</span>
                        <input type="text" name="zip2" id="zip2" class="border-danger form-control col-1" readonly>&nbsp;
                        <button type="button" id="zipcodebtn" class="btn btn-dark btn-sm" data-toggle="modal" data-target="#zipcode"><i class="fas fa-question-circle"></i> 우편번호 찾기</button>
                    </div><!--우편번호-->
                    <div class="form-group row">
                        <label for="addr1" class="text-right text-danger col-form-label col-2">주소</label>
                        <input type="text" name="addr1" id="addr1" class="border-danger form-control col-4">&nbsp;&nbsp;
                        <input type="text" name="addr2" id="addr2" class="border-danger form-control col-4">
                    </div>    <!--주소-->
                    <div class="form-group row">
                        <label for="email1" class="text-danger col-form-label col-2 text-right">전자우편 주소</label>
                        <input type="text" name="email1" id="email1" class="border-danger form-control col-2">
                        <div class="input-group-append">
                            <span class="input-group-text bg-danger text-white">&#64;</span></div> <!-- @기능!! -->
                        <input type="text" name="email2" id="email2" class="border-danger form-control col-2" readonly>
                        <select class="form-control border-danger col-2">
                            <option>- 선택하세요 -</option>
                            <option>직접입력하기</option>
                            <option>naver.com</option>
                            <option>gmail.com</option>
                            <option>hanmail.com</option>
                        </select>
                    </div><!--이메일-->
                    <div class="form-group row">
                        <label for="tel1" class="text-danger text-right col-form-label col-2">개인 연락처</label>
                        <select class="form-control border-danger col-1" name="tel1" id="tel1">
                            <option>-국번-</option>
                            <option>010</option>
                            <option>011</option>
                        </select>
                        <span class="col-form-label">&nbsp;&#45;&nbsp;</span>
                        <input type="text" name="tel2" id="tel2" class="border-danger form-control col-1">
                        <span class="col-form-label">&nbsp;&#45;&nbsp;</span>
                        <input type="text" name="tel3" id="tel3" class="border-danger form-control col-1">
                    </div> <!--전화번호-->
                    <div class="form-group row">
                    <label for="hp1" class="text-danger text-right col-form-control col-2">자동가입방지</label>
                    <div class="g-recaptcha" data-sitekey="6LdjIwgbAAAAADR_OcUJETHsPvtg6PB5ycg6Z9Zz"></div>
   					<input type="hidden" id="g-recaptcha" name="g-recaptcha" />
                    </div><!--캡챠-->
                    </div><!-- column class -->

                </div><!-- 정보입력-->

                <div class="row">
                    <div class="col-12 text-center">
                    <hr>
                    <button type="button" class="btn btn-primary btn-sm" id="joinbtn"><i class="fas fa-check-circle"></i> 입력완료</button>
                    <button type="button" class="btn btn-primary btn-sm" id="cancelbtn"><i class="fas fa-times-circle"></i> 입력취소</button>
                    </div>
                </div><!--버튼들-->
            </form>

          </div><!--일반회원 폼  -->

          <!-- 우편번호 폼 모달  -->
          <div id="zipcode" class="modal" role="dialog" tabindex="-1">
              <div class="modal-dialog modal-lg">
                  <div class="modal-content">
                      <div class="modal-header">
                          <h4 class="modal-title">우편번호 찾기</h4>
                          <button type="button" data-dismiss="modal" class="close">&times;</button>
                      </div>
                      <div class="modal-body">
                          <form name="zipfrm" id="zipfrm">
                              <div class="form-inline row justify-content-center">
                                  <label for="dong" class="text-primary text-right col-form-label">검색하실 주소의<br> 동이름을 입력하세요</label>&nbsp;&nbsp;
                                  <input type="text" name="dong" id="dong" class="form-control border-primary col-4">&nbsp;&nbsp;
                                  <button type="button" class="btn btn-primary btn-sm" id="findzipbtn"><i class="fas fa-search"></i>검색하기</button>
                              </div>
                              <div class="from-group-row">
                                <hr class="col-9">
                                <p class="col-12 text-danger text-center">지역의 읍/면/동의 이름을 공백없이 입력하신 후, [검색하기] 버튼을 클릭하세요</p>
                                <select class="col-8 offset-2 form-control" size="10" id="addrlist" name="addrlist">
                                    <option>123-456 서울 종로구 창신동</option>
                                    <option>123-456 서울 종로구 창신동</option>
                                    <option>123-456 서울 종로구 창신동</option>
                                    <option>123-456 서울 종로구 창신동</option>
                                    <option>123-456 서울 종로구 창신동</option>
                                    <option>123-456 서울 종로구 창신동</option>
                                    <option>123-456 서울 종로구 창신동</option>
                                    <option>123-456 서울 종로구 창신동</option>
                                    <option>123-456 서울 종로구 창신동</option>
                                    <option>123-456 서울 종로구 창신동</option>
                                    <option>123-456 서울 종로구 창신동</option>
                                    <option>123-456 서울 종로구 창신동</option>
                                    <option>123-456 서울 종로구 창신동</option>
                                    <option>123-456 서울 종로구 창신동</option>
                                    <option>123-456 서울 종로구 창신동</option>
                                    <option>123-456 서울 종로구 창신동</option>
                                    <option>123-456 서울 종로구 창신동</option>
                                    <option>123-456 서울 종로구 창신동</option>
                                    <option>123-456 서울 종로구 창신동</option>
                                    <option>123-456 서울 종로구 창신동</option>
                                </select>

                              </div>
                          </form>
                      </div>
                      <div class="modal-footer">
                          <button type="button" class="btn btn-danger btn-sm"><i class="fas fa-check-circle"></i> 선택하고 닫기</button>
                      </div>
                  </div>
              </div>
          </div>

      </div> <!--메인영역  -->