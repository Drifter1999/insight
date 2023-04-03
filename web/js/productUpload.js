
window.onload = function() {
    var input = document.querySelector('#productImage');
    input.addEventListener('change', updateUploadCount);
};

function updateUploadCount() {
    var input = document.querySelector('#productImage');
    document.querySelector('#upload-count').textContent = '업로드된 파일 개수: ' + input.files.length;
}

function previewImage(event) {
    var input = event.target;
    var previewContainer = document.getElementById("preview-container");
    previewContainer.innerHTML = ""; // 기존의 미리보기 이미지 제거

    if (input.files && input.files.length) {
        for (var i = 0; i < input.files.length; i++) {
            var reader = new FileReader();
            reader.onload = (function(file) {
                return function(e) {
                    var image = new Image();
                    image.src = e.target.result;
                    image.classList.add("preview");
                    image.addEventListener("click", function() {
                        var imageUrl = image.getAttribute("src");
                        var newWindow = window.open("", "_blank");
                        newWindow.document.write("<img src='" + imageUrl + "' style='max-width: 640px; max-height: 640px;'>");
                    });
                    previewContainer.appendChild(image);
                }
            })(input.files[i]);
            reader.readAsDataURL(input.files[i]);
        }
    }
}
function checkTitle() {
    var titleInput = document.getElementById("productTitle");
    var titleError = document.getElementById("titleError");
    if (titleInput.value.length < 2) {
        titleError.style.display = "inline";
    } else {
        titleError.style.display = "none";
    }
}

// select 요소 선택
const selectElem = document.querySelector('#productCategoryNum');

// div 요소 선택
const selectedCategoryElem = document.querySelector('#selectedCategory');

// 카테고리 업데이트 함수
function updateSelectedCategory() {
    // 선택된 옵션의 값과 텍스트 가져오기
    const selectedValue = selectElem.value;
    const selectedText = selectElem.options[selectElem.selectedIndex].text;

    // 선택한 카테고리 업데이트
    selectedCategoryElem.textContent = `선택한 카테고리: ${selectedText}`;
}

function checkNumberOnly(event) {
    var code = event.keyCode || event.which;
    if ((code < 48 || code > 57) && (code < 96 || code > 105)) {
        if (code !== 8) { // 8은 백스페이스 키의 keyCode 값입니다.
            alert("숫자만 입력해주세요.");
            event.target.value = event.target.value.replace(/[^0-9]/g, '');
        }
    }
}

function validateForm() {
    var productName = document.getElementById("productName");
    var productTitle = document.getElementById("productTitle");
    var productDescription = document.getElementById("productDescription");
    var productQuantity = document.getElementById("productQuantity");
    var productPrice = document.getElementById("productPrice");

    if (productName.value.trim() === "") {
        alert("상품 이름을 입력해주세요.");
        productName.focus();
        return false;
    }

    if (productTitle.value.trim() === "") {
        alert("상품 제목을 입력해주세요.");
        productTitle.focus();
        return false;
    }

    if (productDescription.value.trim() === "") {
        alert("상품 설명을 입력해주세요.");
        productDescription.focus();
        return false;
    }

    if (productQuantity.value.trim() === "") {
        alert("상품 수량을 입력해주세요.");
        productQuantity.focus();
        return false;
    }

    if (productPrice.value.trim() === "") {
        alert("상품 가격을 입력해주세요.");
        productPrice.focus();
        return false;
    }

    return true;
}
