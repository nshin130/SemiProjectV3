
// new board button
$('#newbdbtn').on('click', function() {
    location.href='/board/write';
});

//goto list
$('#listbdbtn').on('click', function() {
    location.href='/board/list';
});

//save board
$('#savebdbtn').on('click', function() {
    if ($('#title').val() == '') alert('제목을 작성하세요');
    else if ($('#contents').val() == '') alert('본문을 작성하세요');
    else if (grecaptcha.getResponse() == '') alert('자동가입방지를 확인하세요');
    else {
        const frm = $('#boardfrm');
        frm.attr('method','post');
        frm.attr('action','/board/write');
        frm.submit();
    }
});

// search (board)
$('#findbtn').on('click', function() {
   if ($('#findkey').val() == '') alert('검색할 내용을 작성하세요');
   else {
       let qry = '?findtype=' + $('#findtype').val();
       qry += "&findkey=" + $('#findkey').val()+"&cp=1";
       let url = '/board/find' + qry;
       location.href=url;
   }
});

// findtype tag setting 말머리
// $('#findtype').val('${param.findtype}').prop('selected', 'true');
// findtype 밑에 있는 여러 옵션들중 value 값이 ${}인것중에서 속성값 selected를 true?

// new board reply
$('#newbrbtn').on('click', function() {
   if($('#reply').val() ==' ') alert('댓글을 작성하세요');
   else {
       const frm = $('#replyfrm');
       frm.attr('method', 'post');
       frm.attr('action', '/reply/write');
       frm.submit();
   }
});

// show reply
function addReply(rno) {
    $('#replyModal').modal('show');
    $('#rpno').val(rno); // 대댓글 작성시 부모댓글 번호를 넘겨줌
}

//new reply
$('#newrrpbtn').on('click',  function() {
    if ($('rreply').val() == '') alert ('대댓글을 작성하세요');
    else {
        const frm = $('#rpfrm');
        frm.attr('method', 'post');
        frm.attr('action', '/rreply/write');
        frm.submit();
    }

});