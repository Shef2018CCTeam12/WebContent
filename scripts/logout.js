function logout(e){
    // e.preventDefault();
    // document.cookie = document.cookie.replace(/JSESSIONID=[0-9a-f]{32}/i, 'JSESSIONID=; Path=/CloudPlatform/; expires=Thu, 01 Jan 1970 00:00:00 GMT')
    // location.replace(location.href);
    $.ajax({
        url: './UserAuth',
        data: {
            Action: 'logout',
        },
        success: function(){
            $("#login-button").text('login');
            $("#login-button").attr('href', './login.jsp');
            $("#login-button").off('click');
        },
        // error: login_fail,
    });

}
function changeName(){
    $.ajax({
        url: './UserAuth',
        data: {
            Action: 'info',
        },
        success: ({LoggedIn}) => {
            if(LoggedIn){
                $("#login-button").text('logout');
                $("#login-button").attr('href', '#');
                $("#login-button").click(logout);
            }
        },

            
        // error: login_fail,
    });

    // if(/JSESSIONID=[0-9a-f]{32}/i.test(document.cookie)){
    //     $("#login-button").text('logout');
    //     $("#login-button").attr('href', '#');
    //     $("#login-button").click(logout);
    // }
}

$(document).ready(changeName)