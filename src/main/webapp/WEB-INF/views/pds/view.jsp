<%@ page pageEncoding="UTF-8"%>

 <style>
        .tbbg1{background: #dff0f8}
        .tbbg2{background: }
        .tbbg3{background: #dff0f8}
        .pushdwn{ margin-top: 50px}
        .cmtbg1{background: skyblue; padding:4px 0}
        .cmtbg2{background: pink; padding:4px 0}
        .pushright{float: right}
    </style>
    
    <div id="main">

          <div>
              <h3><i class="fas fa-save"></i> 자료실</h3>
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
                              <h2>There is no one who loves pain itself</h2>
                          </th>
                      </tr>
                       <tr class="tbbg2">
                          <td class="width: 50%">nshin130</td>
                          <td class="text-right">2021.05.21 10:58:23 / 22 / 33</td>
                      </tr>
                      <tr class="tbbg3">
                          <td colspan="2">
                              <p>"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..."<br>
                              "There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain..."</p>
                              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                              <p>Aenean scelerisque ante sed dui mollis, eu laoreet metus efficitur. Phasellus consectetur sodales eros, at consequat leo molestie eu. Nam mattis metus et neque interdum, in pulvinar purus semper. Proin mattis sapien et lectus tincidunt, a ornare lorem feugiat.</p>
                              <p>Integer ullamcorper elementum commodo. Etiam lobortis pretium mi, ut condimentum ipsum rutrum vel. Proin nec lectus blandit, laoreet dolor aliquet, varius massa. Mauris in ante in mauris sodales consequat.</p>
                              <p>Duis feugiat lacinia augue, ac posuere velit porta quis. Maecenas efficitur ornare magna ut fermentum. Ut aliquet hendrerit odio sit amet consectetur. Aliquam ac egestas eros. Etiam luctus elit ante, et euismod metus efficitur sit amet. Cras ut aliquam velit.</p>
                              <p>Integer ullamcorper elementum commodo. Etiam lobortis pretium mi, ut condimentum ipsum rutrum vel. Proin nec lectus blandit, laoreet dolor aliquet, varius massa. Mauris in ante in mauris sodales consequat.</p>
                              <p>Aenean scelerisque ante sed dui mollis, eu laoreet metus efficitur. Phasellus consectetur sodales eros, at consequat leo molestie eu. Nam mattis metus et neque interdum, in pulvinar purus semper. Proin mattis sapien et lectus tincidunt, a ornare lorem feugiat.</p>
                          </td>
                      </tr><!-- 본문 -->
                      <!--
                      <tr>
                          <td colspan="2" class="tbbg4"> 첨부 1:
                              <i class="far fa-file-archive"></i> homework.zip (123KB, 10회다운로드함)
                          </td>
                      </tr>
                      <tr>
                          <td colspan="2" class="tbbg5"> 첨부 2:
                              <i class="far fa-file-alt"></i> homework.txt (345KB, 50회다운로드함)
                          </td>
                      </tr>
                      <tr>
                          <td colspan="2" class="tbbg6"> 첨부 3:
                              <i class="far fa-file-image"></i> homework.png (567KB, 100회다운로드함)
                          </td>
                      </tr>
                      -->

                      <tr>
                          <td colspan="2" class="tbbg4"> 첨부1 &nbsp;&nbsp;
                              <img src="/img/zip.png"> homework.zip (123KB, 10회다운로드함)
                          </td>
                      </tr>
                      <tr>
                          <td colspan="2" class="tbbg5"> 첨부2 &nbsp;&nbsp;
                              <img src="/img/txt.png"> homework.txt (345KB, 50회다운로드함)
                          </td>
                      </tr>
                      <tr>
                          <td colspan="2" class="tbbg6"> 첨부3 &nbsp;&nbsp;
                              <img src="/img/png.png"> homework.png (567KB, 100회다운로드함)
                          </td>
                      </tr>

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
    