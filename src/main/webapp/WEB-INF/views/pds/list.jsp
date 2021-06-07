<%@ page pageEncoding="UTF-8"%>

  <div id="main">
          <div>
              <h3><i class="fas fa-save"></i> 자료실</h3>
              <hr>
          </div><!--페이지타이틀-->

          <div class="row">

            <div class="col-5 offset-1">
                <div class="form-group row border-danger">
                    <select class="form-control col-3 border-dark" name="findtype" id="findytpe">
                        <option value="title">제목</option>
                        <option value="ttlcont">제목+내용</option>
                        <option value="userid">작성자</option>
                        <option value="contents">내용</option>
                    </select>&nbsp;
                    <input type="text" name="findkey" id="findkey" class="form-control col-5 border-dark">&nbsp;
                    <button type="button" id="findbtn" class="btn btn-dark btn-sm"><i class="fas fa-search"></i> 검색</button>
                </div>
            </div>

            <div class="col-5 text-right">
              <button type="button" class="btn btn-light" id="newbdbtn"><i class="fas fa-plus-circle"></i> 새글 쓰기</button>
            </div>

          </div> <!-- 새글쓰기/검색관련 버튼 -->

          <div class="row">
              <div class="col-10 offset-1">
                  <table class="table table-striped text-center table-hover">
                      <thead style="background:">
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

                          <tr>
                              <td>15</td>
                              <td><a href="view.html">There is no one who loves pain itself</a></td>
                              <td>nshin130</td>
                              <td>2021.05.21</td>
                              <td>15</td>
                              <td>315</td>
                          </tr>
                          <tr>
                              <td>14</td>
                              <td>new Iphone 13 release!!</td>
                              <td>nshin130</td>
                              <td>2021.05.21</td>
                              <td>15</td>
                              <td>315</td>
                          </tr>
                          <tr>
                              <td>13</td>
                              <td>new IPhone 13 release!!</td>
                              <td>nshin130</td>
                              <td>2021.05.21</td>
                              <td>15</td>
                              <td>315</td>
                          </tr>
                          <tr>
                              <td>12</td>
                              <td>new IPhone 13 release!!</td>
                              <td>nshin130</td>
                              <td>2021.05.21</td>
                              <td>15</td>
                              <td>315</td>
                          </tr>
                          <tr>
                              <td>11</td>
                              <td>new IPhone 13 release!!</td>
                              <td>nshin130</td>
                              <td>2021.05.21</td>
                              <td>15</td>
                              <td>315</td>
                          </tr>
                          <tr>
                              <td>10</td>
                              <td>new IPhone 13 release!!</td>
                              <td>nshin130</td>
                              <td>2021.05.21</td>
                              <td>15</td>
                              <td>315</td>
                          </tr>
                          <tr>
                              <td>9</td>
                              <td>new IPhone 13 release!!</td>
                              <td>nshin130</td>
                              <td>2021.05.21</td>
                              <td>15</td>
                              <td>315</td>
                          </tr>
                          <tr>
                              <td>8</td>
                              <td>new IPhone 13 release!!</td>
                              <td>nshin130</td>
                              <td>2021.05.21</td>
                              <td>15</td>
                              <td>315</td>
                          </tr>
                          <tr>
                              <td>7</td>
                              <td>new IPhone 13 release!!</td>
                              <td>nshin130</td>
                              <td>2021.05.21</td>
                              <td>15</td>
                              <td>315</td>
                          </tr>
                          <tr>
                              <td>6</td>
                              <td>new IPhone 13 release!!</td>
                              <td>nshin130</td>
                              <td>2021.05.21</td>
                              <td>15</td>
                              <td>315</td>
                          </tr>
                          <tr>
                              <td>5</td>
                              <td>new IPhone 13 release!!</td>
                              <td>nshin130</td>
                              <td>2021.05.21</td>
                              <td>15</td>
                              <td>315</td>
                          </tr>
                          <tr>
                              <td>4</td>
                              <td>new IPhone 13 release!!</td>
                              <td>nshin130</td>
                              <td>2021.05.21</td>
                              <td>15</td>
                              <td>315</td>
                          </tr>
                          <tr>
                              <td>3</td>
                              <td>new IPhone 13 release!!</td>
                              <td>nshin130</td>
                              <td>2021.05.21</td>
                              <td>15</td>
                              <td>315</td>
                          </tr>
                          <tr>
                              <td>2</td>
                              <td>new IPhone 13 release!!</td>
                              <td>nshin130</td>
                              <td>2021.05.21</td>
                              <td>15</td>
                              <td>315</td>
                          </tr>
                          <tr>
                              <td>1</td>
                              <td>new IPhone 13 release!!</td>
                              <td>nshin130</td>
                              <td>2021.05.21</td>
                              <td>15</td>
                              <td>315</td>
                          </tr>
                      </tbody>
                  </table>
              </div>
          </div> <!-- 리스트 -->


          <div class="row">
              <div class="col-12">
                  <ul class="pagination justify-content-center">
                      <li class="page-item"><a href="#" class="page-link">이전</a></li>

                      <li class="page-item active"><a href="#" class="page-link">1</a></li>
                      <li class="page-item"><a href="#" class="page-link">2</a></li>
                      <li class="page-item"><a href="#" class="page-link">3</a></li>
                      <li class="page-item"><a href="#" class="page-link">4</a></li>
                      <li class="page-item"><a href="#" class="page-link">5</a></li>
                      <li class="page-item"><a href="#" class="page-link">6</a></li>
                      <li class="page-item"><a href="#" class="page-link">7</a></li>
                      <li class="page-item"><a href="#" class="page-link">8</a></li>
                      <li class="page-item"><a href="#" class="page-link">9</a></li>
                      <li class="page-item"><a href="#" class="page-link">10</a></li>


                      <li class="page-item"><a href="#" class="page-link">다음</a></li>
                  </ul>
              </div>
          </div><!-- pagination -->

      </div> <!-- main -->