
var code;
window.onload = function () {
    createCode();
}

function createCode() {
    code = "";
    var codeLength = 4;//length 
    var checkCode = document.getElementById("code"); //find the element
    var random = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R',
        'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');
    for (var i = 0; i < codeLength; i++) {
        var index = Math.floor(Math.random() * 36);
        code += random[index];
    }
    checkCode.value = code;
}


function validate() {
    var inputCode = document.getElementById("input").value.toUpperCase(); //to uppercase
    var password = document.getElementById("Password").value;
    var username = document.getElementById("Username").value;
    if (username.length <= 0) {
        alert("Please input username.");
        createCode();//recreate 
    }
    else if (password.length <= 0) {
        alert("Please input the password.");
        createCode();//recreate 
    }
    else if (inputCode.length <= 0) {
        alert("Please input the validation code.");
    }
    else if (inputCode != code) {
        alert("Validation code wrong!!");
        createCode();//recreate 
        document.getElementById("input").value = "";//clear the input 
    }
    else {
        login_req();
    }
}

function jump(href = 'index.jsp') {
    window.location.href = href;
}

function register() {
    var inputCode = document.getElementById("input").value.toUpperCase(); //to uppercase
    var password = document.getElementById("register-confirm-password").value;
    var cpassword = document.getElementById("register-password").value;
    var username = document.getElementById("Username").value;

    if (username.length <= 0) {
        alert("Please input username.");
        createCode();//recreate 
    }
    else if (password.length <= 0) {
        alert("Please input the password.");
        createCode();//recreate 
    }
    else if (cpassword.length <= 0) {
        alert("Please input confirm the password.");
        createCode();//recreate 
    }

    else if (inputCode.length <= 0) {
        alert("Please input the validation code.");
    }
    else if (inputCode != code) {
        alert("Validation code wrong!!");
        createCode();//recreate 
        document.getElementById("input").value = "";//clear the input 
    }
    else {
        register_req();
    }
}

function register_req() {
    var username = document.getElementById("Username").value;
    var password = document.getElementById("register-password").value;
    var md5Passwd = $.md5(password);

    $.ajax({
        url: './UserAuth',
        data: {
            Action: 'register',
            username,
            password: md5Passwd
        },
        success: register_succss,
        error: register_fail,
    });

}
function register_succss(res) {
    if (res.Result) {
        jump(res.Redirct);
    } else {
        $('.respond').show();
        alert("register error");
        // jump(res.Redirct)
    }
}

function register_fail(error) {
    alert('try refresh~');
}

function login_req() {
    var username = document.getElementById("Username").value;
    var password = document.getElementById("Password").value;
    var md5Passwd = $.md5(password);
    $.ajax({
        url: './UserAuth',
        data: {
            Action: 'login',
            username,
            password: md5Passwd
        },
        success: login_succss,
        error: login_fail,
    });

}
function login_succss(res) {
    if (res.Login) {
        alert("Correct");
        jump(res.Redirct);
    } else {
        $('.respond').show();
        // jump(res.Redirct)
    }
}

function login_fail(error) {
    alert('try refresh~');
}