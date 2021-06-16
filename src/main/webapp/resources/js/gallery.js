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
    //(this)file1의 다음요소에 클래스 이름이 (.)custom-file-label에 fname값을 넣는다는것것});
});

$('#file2').on('change', function() { //파일1이 변하면
    var fname = $(this).val(); //이벤트를 발생시킨 것에대한 값
    fname = fname.substring(fname.lastIndexOf("\\") + 1);
    $(this).next('.custom-file-label').html(fname);
    //(this)file1의 다음요소에 클래스 이름이 (.)custom-file-label에 fname값을 넣는다는것것});
});

$('#file3').on('change', function() { //파일1이 변하면
    var fname = $(this).val(); //이벤트를 발생시킨 것에대한 값
    fname = fname.substring(fname.lastIndexOf("\\") + 1);
    $(this).next('.custom-file-label').html(fname);
    //(this)file1의 다음요소에 클래스 이름이 (.)custom-file-label에 fname값을 넣는다는것것});
});