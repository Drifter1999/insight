const loginForm = document.getElementById("loginForm");

loginForm.addEventListener("submit", (event) => {
    event.preventDefault();
    const userid = document.getElementById("userid").value;
    const userpw = document.getElementById("userpw").value;

    if (userid === "" && userpw === "") {
        alert("아이디와 비밀번호를 입력해주세요.");
    } else if (userid === "") {
        alert("아이디를 입력해주세요.");
    } else if (userpw === "") {
        alert("비밀번호를 입력해주세요.");
    } else {
        location.href = "mainhome.jsp";
    }
});