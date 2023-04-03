// joincheck 회원가입 유효성 검사
function joincheck() {
    //변수에 담아주기
    var username = document.getElementById("username");
    var userid = document.getElementById("userid");
    var userpw = document.getElementById("userpw");
    var userpwcheck = document.getElementById("userpwcheck");
    var useraddr = document.getElementById("useraddr");
    var userphone = document.getElementById("userphone");
    var useremail = document.getElementById("useremail");
    
    var nameKor = /^[가-힣]{2,15}$/; // 이름 한글 입력
    var idch = /^(?=.*[a-zA-Z])(?=.*[0-9]).{2,20}$/; //아이디 영문자+숫자 조합(2~20자리 입력) 정규식
    var pwcheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/; //비밀번호 영문자,숫자,특수조합(8~25자리 입력) 정규식
    var phnum = /^[0-9]{2,3}[0-9]{3,4}[0-9]{4}$/ // 전화번호 정규식, 하이픈만 빠짐
    var emcheck = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i; // 이메일 입력 정규식



    if (username.value == "") {
        alert("이름을 입력하세요");
        username.focus();
        return false;
    }


    if(!nameKor.test(username.value)){
        alert("한글로 이름을 입력하세요");
        return false;
    }

    if (userid.value == "") { //해당 입력값이 없을 경우 같은말: if(!userid.value)
        alert("아이디를 입력하세요");
        userid.focus(); //focus(): 커서가 깜빡이는 현상, blur(): 커서가 사라지는 현상
        return false; //return: 반환하다 return false:  아무것도 반환하지 말아라 아래 코드부터 아무것도 진행하지 말것
    }


    if (!idch.test(userid.value)) {
        alert("아이디는 2~20자 이내의 영문, 숫자를 사용하세요");
        idch.focus();
        return false;
    }


    if (userpw.value == "") {
        alert("비밀번호를 입력하세요");
        userpw.focus();
        return false;
    }



    if (!pwcheck.test(userpw.value)) {
        alert("영문, 숫자, 특수문자 조합의 8~25자리 비밀번호를 사용하세요");
        pwcheck.focus();
        return false;
    }


    if (userpwcheck.value !== userpw.value) {
        alert("비밀번호가 일치하지 않습니다");
        userpwcheck.focus();
        return false;
    }


    if (useraddr.value == "") {
        alert("주소를 입력하세요");
        useraddr.focus();
        return false;
    }



    if (!phnum.test(userphone.value)) {
        alert("올바른 전화번호를 입력해주세요");
        userphone.focus();
        return false;
    }

    if (useremail.value == "") {
        alert("이메일 주소를 입력하세요");
        useremail.focus();
        return false;
    }

    if (!emcheck.test(useremail.value)) {
        alert("올바른 이메일을 입력하세요");
        useremail.focus();
        return false;
    }


    //입력 값 전송
    document.joinform.submit();
}

//아이디 중복체크 
function idcheck() {
    // DB써야함


}