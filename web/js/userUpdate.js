var nameKor = /^[가-힣]{2,15}$/; // 이름 한글 입력
var pwcheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/; //비밀번호 영문자,숫자,특수조합(8~25자리 입력) 정규식
var phnum = /^[0-9]{2,3}[0-9]{3,4}[0-9]{4}$/ // 전화번호 정규식, 하이픈만 빠짐
var emcheck = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i; // 이메일 입력 정규식


function validateInfo(){
        var editNameResult = editName();
        var editpwResult = editPw();
        var editAddrResult = editAddr();
        var editPhoneResult = editPhone();
        var editEmResult = editEm();
        if( !editNameResult || !editpwResult || !editAddrResult || !editPhoneResult || !editEmResult){
            alert("회원정보를 다시 확인해주세요.");
        }else{
            return true;
        }
    }

    function editName() {
        // 이름 유효성 검사
        var username = document.getElementById("username").value;
        if (username == " ") {
            alert("이름을 입력하세요");
            document.getElementById("username").focus();
            return false;
        }
        if(!nameKor.test(username.value)){
            alert("한글로 이름을 입력하세요");
            return false;
        }
        return true;
    }

    function editPw() {
        var userpw = document.getElementById("userpw").value;
        var userpw2 = document.getElementById("userpw2").value;

        // 비밀번호 유효성 검사 (영문, 숫자, 특수문자 조합의 8~25자리 비밀번호)
        if (pwcheck.test(userpw)) {
            document.getElementById("pweditError").style.display = "block";
            return false;
        }

        // 비밀번호 확인
        if (userpw !== userpw2) {
            document.getElementById("pweditError2").style.display = "block";
            return false;
        }
        // 비밀번호 입력
        if (userpw.value == "") {
            alert("비밀번호를 입력하세요");
            userpw.focus();
            return false;
        }

        document.getElementById("pweditError").style.display = "none";
        document.getElementById("pweditError2").style.display = "none";
        return true;
    }

    function editPhone() {
        // 전화번호 유효성 검사
        if (!phnum.test(userphone)) {
            document.getElementById("phoneerror").style.display = "block";
            return false;
        }
        document.getElementById("phoneerror").style.display = "none";
        return true;
    }
    function editEm() {
        // 이메일 유효성 검사
        var emailRegex = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
        if (!emailRegex.test(useremail)) {
            document.getElementById("emerror").style.display = "block";
            return false;
        } else {
            document.getElementById("emerror").style.display = "none";
            return true;
        }
    }

    function editAddr() {
        // 이름 유효성 검사
        var detailaddr = document.getElementById("sample4_detailAddress").value ;
        var useraddr = document.getElementById("useraddr").value;
        if (useraddr == "") {
            alert("주소를 입력하세요");
            useraddr.focus();
            return false;
        }
        else{
            document.getElementById("useraddr").value = useraddr+" " +detailaddr;
            document.getElementById("useraddr").readOnly = true;
        }
    }

    function sample4_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 참고 항목 변수

            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }

            if(data.buildingName !== '' && data.apartment === 'Y'){
                extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }

            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }

            document.getElementById('sample4_postcode').value = data.zonecode;
            document.getElementById("sample4_roadAddress").value = roadAddr;
            document.getElementById("sample4_jibunAddress").value = data.jibunAddress;

            if(roadAddr !== ''){
                document.getElementById("sample4_extraAddress").value = extraRoadAddr;
            } else {
                document.getElementById("sample4_extraAddress").value = '';
            }

            var guideTextBox = document.getElementById("guide");

            if(data.autoRoadAddress) {
                var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                guideTextBox.style.display = 'block';

            } else if(data.autoJibunAddress) {
                var expJibunAddr = data.autoJibunAddress;
                guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                guideTextBox.style.display = 'block';
            } else {
                guideTextBox.innerHTML = '';
                guideTextBox.style.display = 'none';
            }

            document.getElementById("useraddr").value = roadAddr + " " + data.buildingName ;

            document.getElementById("useraddr").readOnly = true;
        }
    }).open();
    }


