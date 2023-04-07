var username = document.getElementById("username");
var userid = document.getElementById("userid");
var userpw = document.getElementById("userpw");
var userpw2 = document.getElementById("userpw2");
var useraddr = document.getElementById("useraddr");
var userphone = document.getElementById("userphone");
var useremail = document.getElementById("useremail");
var userdetailaddr = document.getElementById("sample4_detailAddress");
var nameKor = /^[가-힣]{2,15}$/; // 이름 한글 입력
var idch = /^(?=.*[a-zA-Z])(?=.*[0-9]).{2,20}$/; //아이디 영문자+숫자 조합(2~20자리 입력) 정규식
var pwcheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/; //비밀번호 영문자,숫자,특수조합(8~25자리 입력) 정규식
var phnum = /^[0-9]{2,3}[0-9]{3,4}[0-9]{4}$/ // 전화번호 정규식, 하이픈만 빠짐
var emcheck = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i; // 이메일 입력 정규식


function nameCheck() {
    if(!nameKor.test(username.value)){
        document.getElementById("nameError").style.display="block";
        return false;
    }
    document.getElementById("nameError").style.display="none";
}
function idCheck(){
    if (!idch.test(userid.value)) {
        idch.focus();
        document.getElementById("idError").style.display="block";
        return false;
    }
    document.getElementById("idError").style.display="none";
}
function pwCheck(){
    //비밀번호 유효성 검사
    if (!pwcheck.test(userpw.value)) {
        document.getElementById("pwError").style.display="block";
        pwcheck.focus();
        return false;
    }else{
        document.getElementById("pwError").style.display="none";
    }
    //비밀번호 일치 확인
    if (userpw2.value !== userpw.value) {
        document.getElementById("pwError2").style.display = "block";
        userpw2.focus();
        return false;
    }else{
        document.getElementById("pwError2").style.display="none";
    }
}

function emailCheck(){
    //이메일 유효성 검사
    if (!emcheck.test(useremail.value)) {
        document.getElementById("emailError").style.display = "block";
        useremail.focus();
        return false;
    }
    document.getElementById("emailError").style.display="none";
}
function phoneCheck() {
    // 전화번호 유효성 검사
    if (!phnum.test(userphone.value)) {
        document.getElementById("phoneError").style.display = "block";
        userphone.focus();
        return false;
    }
    document.getElementById("phoneError").style.display="none";
}


function compIdCheck(selector) {
    if($(selector).val() != '') {
        let xhr = new XMLHttpRequest();
        let userid = $(selector).val()
        xhr.open("GET", "idCheckService.jsp?userid="+userid, true);
        xhr.send();
        xhr.onreadystatechange = function () {
            if (xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200) {
                alert(xhr.responseText);
                alert("사용 가능한 아이디 입니다.");
            }
        }
    }else {
        alert("중복된 아이디입니다.");
    }
}

function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("sample6_extraAddress").value = extraAddr;

            } else {
                document.getElementById("sample6_extraAddress").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample6_postcode').value = data.zonecode;
            document.getElementById("useraddr").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("sample6_detailAddress").focus();
        }
    }).open();
}

function addDetailaddr(){
    document.getElementById("useraddr").value
    = document.getElementById("useraddr").value +" "+ document.getElementById("sample6_detailAddress").value;
}

function addrcheck() {
    if(useraddr == " ")
    return false;
}

function validateInfo() {
    var nameResult = nameCheck();
    var pwResult = pwCheck();
    var addrResult = addrcheck();
    var phoneResult = phoneCheck();
    var emResult = emailCheck();
    if (!nameResult || !pwResult || !addrResult || !phoneResult || !emResult) {
        alert("회원정보를 다시 확인해주세요.");

        myPage.addEventListener('submit', (e) => {
                e.preventDefault();
                const formData = new FormData(myPage);
                console.log(Object.fromEntries(formData.entries()));
                myPage.submit();
        });

        return false;

    } else {
        document.myPage.submit();
    }


}

function UserDelete() {
    let userid = "${userSession.userid}".trim();
    let userpw = "${userSession.userpw}".trim();
    let password = prompt("비밀번호 입력 바랍니다.");
    if (password != userpw) {
        alert("입력한 정보가 맞지 않음.");
        location.href = "mypage.jsp";
    }else {
        document.myPage.action = "/UserDelete.in?userid"+userid+"&userpw="+password;
        document.myPage.submit();
    }
}