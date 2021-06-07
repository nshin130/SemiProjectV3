<%@ page pageEncoding="UTF-8"%>


    <style>
        .tbbg1{background: #F5F5F5}
        .tbbg2{background: }
        .tbbg3{background: #F5F5F5}
        .pushdwn{ margin-top: 50px}
        .cmtbg1{background: aliceblue; padding:4px 0}
        .cmtbg2{background: #F5F5F5; padding:4px 0}
        .pushright{float: right}
    </style>


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
                              <h2>귀여운 아기 고양이</h2>
                          </th>
                      </tr>
                       <tr class="tbbg2">
                          <td class="width: 50%">nshin130</td>
                          <td class="text-right">2021.05.21 10:58:23 / 22 / 33</td>
                      </tr>
                      <tr class="tbbg3 text-center">
                          <td colspan="2">
                              <div><img class="img-fluid" src="/img/akka-KtB3Gneh3w0-unsplash.jpg"></div>
                              <div><img class="img-fluid" src="/img/leonsa-fVNyjet1CXY-unsplash.jpg"></div>
                              <div><img class="img-fluid" src="/img/andriyko-podilnyk-RCfi7vgJjUY-unsplash.jpg"></div>
                          </td>
                      </tr><!-- 본문 -->

                      <tr>
                          <td colspan="2" class="tbbg4"> 첨부 &nbsp;&nbsp;
                              <img src="/img/jpg.png"> kitten1.jpg
                          </td>
                      </tr>
                      <tr>
                          <td colspan="2" class="tbbg5"> 첨부 &nbsp;&nbsp;
                              <img src="/img/gif.png"> kitten2.gif
                          </td>
                      </tr>
                      <tr>
                          <td colspan="2" class="tbbg6"> 첨부 &nbsp;&nbsp;
                              <img src="/img/png.png"> kitten3.png
                          </td>
                      </tr><!-- 첨부 -->

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
