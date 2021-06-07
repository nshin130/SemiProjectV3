<%@ page pageEncoding="UTF-8"%>

    <style>
        .pushright {float: right}
        .cdwide {width:238px}
        .imgsize { width: 220px; height: 220px; margin-left: 8px; margin-top:8px; cursor: pointer}
        .moveright {margin-left: 55px}
        img {background-image: url(/img/);}
        .pushdown {margin-bottom: 10px}
    </style>

    <div id="main">
          <div>
              <h3><i class="far fa-file-image"></i> 갤러리</h3>
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

          </div> <!-- 사진올리기버튼 -->

          <div class="row">
              <div class="col-12">
                  <ul class="list-inline moveright">
                     <li class="list-inline-item pushdown">
                         <div class="card cdwide" style="width: 238px">
                             <img onclick="showimg('123');" src="/img/andriyko-podilnyk-RCfi7vgJjUY-unsplash.jpg" class="imgsize card-img-top">
                                <div class="card-body">
                                    <h6 class="card-title">귀여운 아기 고양이</h6>
                                    <p class="card-text">nshin130
                                    <span class="pushright">| 2021-05-21 </span>
                                    </p>
                                    <p class="card-text">
                                        <i class="far fa-eye"></i> 130
                                        <span class="pushright"><i class="fas fa-heart"></i> 70</span>
                                    </p>
                                </div>
                        </div>
                    </li>
                    <li class="list-inline-item pushdown">
                         <div class="card cdwide" style="width: 238px">
                             <img src="/img/andriyko-podilnyk-RCfi7vgJjUY-unsplash.jpg" class="imgsize card-img-top">
                                <div class="card-body">
                                    <h6 class="card-title">귀여운 아기 고양이</h6>
                                    <p class="card-text">nshin130
                                    <span class="pushright">| 2021-05-21 </span>
                                    </p>
                                    <p class="card-text">
                                        <i class="far fa-eye"></i> 130
                                        <span class="pushright"><i class="fas fa-heart"></i> 70</span>
                                    </p>
                                </div>
                        </div>
                    </li>
                    <li class="list-inline-item pushdown">
                         <div class="card cdwide" style="width: 238px">
                             <img src="/img/andriyko-podilnyk-RCfi7vgJjUY-unsplash.jpg" class="imgsize card-img-top">
                                <div class="card-body">
                                    <h6 class="card-title">귀여운 아기 고양이</h6>
                                    <p class="card-text">nshin130
                                    <span class="pushright">| 2021-05-21 </span>
                                    </p>
                                    <p class="card-text">
                                        <i class="far fa-eye"></i> 130
                                        <span class="pushright"><i class="fas fa-heart"></i> 70</span>
                                    </p>
                                </div>
                        </div>
                    </li>
                    <li class="list-inline-item pushdown">
                         <div class="card cdwide" style="width: 238px">
                             <img src="/img/andriyko-podilnyk-RCfi7vgJjUY-unsplash.jpg" class="imgsize card-img-top">
                                <div class="card-body">
                                    <h6 class="card-title">귀여운 아기 고양이</h6>
                                    <p class="card-text">nshin130
                                    <span class="pushright">| 2021-05-21 </span>
                                    </p>
                                    <p class="card-text">
                                        <i class="far fa-eye"></i> 130
                                        <span class="pushright"><i class="fas fa-heart"></i> 70</span>
                                    </p>
                                </div>
                        </div>
                    </li>
                    <li class="list-inline-item">
                         <div class="card cdwide" style="width: 238px">
                             <img src="/img/andriyko-podilnyk-RCfi7vgJjUY-unsplash.jpg" class="imgsize card-img-top">
                                <div class="card-body">
                                    <h6 class="card-title">귀여운 아기 고양이</h6>
                                    <p class="card-text">nshin130
                                    <span class="pushright">| 2021-05-21 </span>
                                    </p>
                                    <p class="card-text">
                                        <i class="far fa-eye"></i> 130
                                        <span class="pushright"><i class="fas fa-heart"></i> 70</span>
                                    </p>
                                </div>
                        </div>
                    </li>
                    <li class="list-inline-item">
                         <div class="card cdwide" style="width: 238px">
                             <img src="/img/andriyko-podilnyk-RCfi7vgJjUY-unsplash.jpg" class="imgsize card-img-top">
                                <div class="card-body">
                                    <h6 class="card-title">귀여운 아기 고양이</h6>
                                    <p class="card-text">nshin130
                                    <span class="pushright">| 2021-05-21 </span>
                                    </p>
                                    <p class="card-text">
                                        <i class="far fa-eye"></i> 130
                                        <span class="pushright"><i class="fas fa-heart"></i> 70</span>
                                    </p>
                                </div>
                        </div>
                    </li>
                    <li class="list-inline-item">
                         <div class="card cdwide" style="width: 238px">
                             <img src="/img/andriyko-podilnyk-RCfi7vgJjUY-unsplash.jpg" class="imgsize card-img-top">
                                <div class="card-body">
                                    <h6 class="card-title">귀여운 아기 고양이</h6>
                                    <p class="card-text">nshin130
                                    <span class="pushright">| 2021-05-21 </span>
                                    </p>
                                    <p class="card-text">
                                        <i class="far fa-eye"></i> 130
                                        <span class="pushright"><i class="fas fa-heart"></i> 70</span>
                                    </p>
                                </div>
                        </div>
                    </li>
                    <li class="list-inline-item">
                         <div class="card cdwide" style="width: 238px">
                             <img src="/img/andriyko-podilnyk-RCfi7vgJjUY-unsplash.jpg" class="imgsize card-img-top">
                                <div class="card-body">
                                    <h6 class="card-title">귀여운 아기 고양이</h6>
                                    <p class="card-text">nshin130
                                    <span class="pushright">| 2021-05-21 </span>
                                    </p>
                                    <p class="card-text">
                                        <i class="far fa-eye"></i> 130
                                        <span class="pushright"><i class="fas fa-heart"></i> 70</span>
                                    </p>
                                </div>
                        </div>
                    </li>
                    <li class="list-inline-item">
                         <div class="card cdwide" style="width: 238px">
                             <img src="/img/andriyko-podilnyk-RCfi7vgJjUY-unsplash.jpg" class="imgsize card-img-top">
                                <div class="card-body">
                                    <h6 class="card-title">귀여운 아기 고양이</h6>
                                    <p class="card-text">nshin130
                                    <span class="pushright">| 2021-05-21 </span>
                                    </p>
                                    <p class="card-text">
                                        <i class="far fa-eye"></i> 130
                                        <span class="pushright"><i class="fas fa-heart"></i> 70</span>
                                    </p>
                                </div>
                        </div>
                    </li>
                    <li class="list-inline-item">
                         <div class="card cdwide" style="width: 238px">
                             <img src="/img/andriyko-podilnyk-RCfi7vgJjUY-unsplash.jpg" class="imgsize card-img-top">
                                <div class="card-body">
                                    <h6 class="card-title">귀여운 아기 고양이</h6>
                                    <p class="card-text">nshin130
                                    <span class="pushright">| 2021-05-21 </span>
                                    </p>
                                    <p class="card-text">
                                        <i class="far fa-eye"></i> 130
                                        <span class="pushright"><i class="fas fa-heart"></i> 70</span>
                                    </p>
                                </div>
                        </div>
                    </li>
                    <li class="list-inline-item">
                         <div class="card cdwide" style="width: 238px">
                             <img src="/img/andriyko-podilnyk-RCfi7vgJjUY-unsplash.jpg" class="imgsize card-img-top">
                                <div class="card-body">
                                    <h6 class="card-title">귀여운 아기 고양이</h6>
                                    <p class="card-text">nshin130
                                    <span class="pushright">| 2021-05-21 </span>
                                    </p>
                                    <p class="card-text">
                                        <i class="far fa-eye"></i> 130
                                        <span class="pushright"><i class="fas fa-heart"></i> 70</span>
                                    </p>
                                </div>
                        </div>
                    </li>
                    <li class="list-inline-item">
                         <div class="card cdwide" style="width: 238px">
                             <img src="/img/andriyko-podilnyk-RCfi7vgJjUY-unsplash.jpg" class="imgsize card-img-top">
                                <div class="card-body">
                                    <h6 class="card-title">귀여운 아기 고양이</h6>
                                    <p class="card-text">nshin130
                                    <span class="pushright">| 2021-05-21 </span>
                                    </p>
                                    <p class="card-text">
                                        <i class="far fa-eye"></i> 130
                                        <span class="pushright"><i class="fas fa-heart"></i> 70</span>
                                    </p>
                                </div>
                        </div>
                    </li>
                  </ul>
          </div> <!-- 리스트 -->
          </div>


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