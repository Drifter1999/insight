
    function editName() {
        // 이름 유효성 검사
        var username = document.getElementById("username").value;
        if (username == "") {
            alert("이름을 입력하세요");
            username.focus();
            return false;
        }
    }

    function editPw() {
        // 비밀번호 유효성 검사 (영문, 숫자, 특수문자 조합의 8~25자리 비밀번호)
        var userpw = document.getElementById("userpw").value;
        var pwRegex = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;
        if (!pwRegex.test(userpw)) {
            document.getElementById("pweditError").style.display = "block";
            return false;
        } else {
            document.getElementById("pweditError").style.display = "none";
        }
        // 비밀번호 확인
        var userpw2 = document.getElementById("userpw2").value;
        if (userpw !== userpw2) {
            document.getElementById("pweditError2").style.display = "block";
            return false;
        } else {
            document.getElementById("pweditError2").style.display = "none";
        }
    }
    function editAddr() {
        // 이름 유효성 검사
        var useraddr = document.getElementById("useraddr").value;
        if (username == "") {
            alert("이름을 입력하세요");
            addr.focus();
            return false;
        }
    }
    function editPhone() {
        // 전화번호 유효성 검사
        var phoneRegex = /^[0-9]{2,3}[0-9]{3,4}[0-9]{4}$/;
        if (!phoneRegex.test(userphone)) {
            document.getElementById("phoneerror").style.display = "block";
            return false;
        } else {
            document.getElementById("phoneerror").style.display = "none";
        }
    }
    function editEm() {
        // 이메일 유효성 검사
        var emailRegex = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
        if (!emailRegex.test(useremail)) {
            document.getElementById("emerror").style.display = "block";
            return false;
        } else {
            document.getElementById("emerror").style.display = "none";
        }
    }

    function sample4_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 참고 항목 변수
            var detailaddr = ' ';

            if( detailaddr == ' '){ detailadddr = document.getElementById("sample4_detailAddress").value ; }

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

            document.getElementById("useraddr").value = roadAddr + " " + data.buildingName + detailaddr;

            document.getElementById("useraddr").readOnly = true;
        }
    }).open();
    }


