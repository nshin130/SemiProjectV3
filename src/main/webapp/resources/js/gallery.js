// show img
function showimg(gno) {
    location.href = '/gallery/view?gno=' + gno;
}

// new gallery
$('#newgalbtn').on('click', function () {
   location.href = '/gallery/write';
});

// write gallery
$('#newgal').on('click', function () {
    if ($('#title').val == '') alert('제목을 작성하세요');
    else if ($('#contents').val == '') alert('본문을 작성하세요');
    else if ($('grecaptcha.getResponse').val == '') alert('자동입력 방지를 확인하세요');
    else {
        const frm = $('#galfrm');
        frm.attr('method', 'post');
        frm.attr('action', '/gallery/write');
        frm.attr('enctype', 'multipart/form-data');
        frm.submit();
    }
});

// show attach filename
$('#file1').on('change', function() { //파일1이 변하면
    var fname = $(this).val(); //이벤트를 발생시킨 것에대한 값
    fname = fname.substring(fname.lastIndexOf("\\") + 1);
    $(this).next('.custom-file-label').html(fname);
    //(this)file1의 다음요소에 클래스 이름이 (.)custom-file-label에 fname값을 넣는다는것});
});

$('#file2').on('change', function() { //파일1이 변하면
    var fname = $(this).val(); //이벤트를 발생시킨 것에대한 값
    fname = fname.substring(fname.lastIndexOf("\\") + 1);
    $(this).next('.custom-file-label').html(fname);
    //(this)file1의 다음요소에 클래스 이름이 (.)custom-file-label에 fname값을 넣는다는것});
});

$('#file3').on('change', function() { //파일1이 변하면
    var fname = $(this).val(); //이벤트를 발생시킨 것에대한 값
    fname = fname.substring(fname.lastIndexOf("\\") + 1);
    $(this).next('.custom-file-label').html(fname);
    //(this)file1의 다음요소에 클래스 이름이 (.)custom-file-label에 fname값을 넣는다는것});
});

// modigy gallery btn
$('#modgbtn').on('click', function() {
    location.href='/gallery/update?gno=' + $('#gno').val();
});

// delete gallery btn
$('#rmvgbtn').on('click', function() {
    alert('기능 준비중입니다');
});

// modify - enabling file attachment
$('#die1').on('change', function() {
    if ($('#die1').is(':checked')) { // 체크박스가 체크되면
        $('#file1').attr('disabled', false); // disabled를 해제
        $('#todie').val("1" + $('#todie').val()); // 첨부파일 수정목록에 1추가
    } else if (!$('#die1').is(':checked')) {
        $('#file1').attr('disabled', true);
        $('#todie').val($('#todie').val().replace(/1/g, ''));
        // 첨부파일 수정목록에서 1제거
    }
});

$('#die2').on('change', function() {
    if ($('#die2').is(':checked')) { // 체크박스가 체크되면
        $('#file2').attr('disabled', false); // disabled를 해제
        $('#todie').val($('#todie').val() + "2"); // 첨부파일 수정목록에 1추가
    } else if (!$('#die2').is(':checked')) {
        $('#file2').attr('disabled', true);
        $('#todie').val($('#todie').val().replace(/2/g, ''));
    }
});

$('#die3').on('change', function() {
    if ($('#die3').is(':checked')) { // 체크박스가 체크되면
        $('#file3').attr('disabled', false); // disabled를 해제
        $('#todie').val($('#todie').val() + "3");
    } else if (!$('#die4').is(':checked')) {
        $('#file3').attr('disabled', true);
        $('#todie').val($('#todie').val().replace(/3/g, ''));
    }
});

// update gallery
$('#modgal').on('click', function() {
   if (grecaptcha.getResponse() == '') alert('자동입력방지를 체크하세요');
   else {
       const frm = $('#modgalfrm');
       frm.attr('method','post');
       frm.attr('enctype','multipart/form-data');
       frm.attr('action','/gallery/update');
       frm.submit();
   }
});