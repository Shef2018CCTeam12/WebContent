<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<%@ include  file="./checkLogin.jsp"%>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Sheffield CouldBase</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <%@ include  file="./mainJs_css.jsp"%>
    <script type="text/javascript">
        function transmit(){
            var form = new FormData();
            form.append("AppName", document.getElementById("AppName").value);
            form.append("Description", document.getElementById("Description").value);
            form.append("AppCharge", document.getElementById("AppCharge").value);
            form.append("AppIcon", document.getElementById("AppIcon").files[0]);
            form.append("AppWAR", document.getElementById("AppWAR").files[0]);

            var ajax = new XMLHttpRequest();
            ajax.open("POST", "./Apps", true);
            ajax.send(form);
            ajax.onreadystatechange = function () {
                if (ajax.readyState == 4 && ajax.status == 200) {
                    var res = JSON.parse(ajax.response);
                    if(res.Result){
                        alert("Upload Succcess");
                        window.location.href="./index.jsp";
                    }
                    else
                        alert("Upload Failed! Make sure your input is correct.");
                }
            }
        }
    </script>
</head>

<body>
    <%@ include  file="./header.jsp"%>
    <div class="subtitle">
        <p>Upload</p>
    </div>
    <div class="uploadWorkplace">
        <div class="uploadGrid">
                <div class="uploadAppNameTitle"> Application name ：</div>
                <div class="uploadAppName"><input type="text" id="AppName" name="AppName" placeholder="Application name" /></div>
                
                <div class="uploadDescriptionTitle">description ：</div>
                <div class="uploadDescription"> 
                <%-- <input type="text" id="Description" name="Description" placeholder="Type a description" /> --%>
                <textarea id="Description" name="Description"  rows="5" placeholder="Type a description" ></textarea></div>
        <div class="uploadImageTitle">Icon ：</div>
        <div class="uploadImage"><input type="file" class="fileButton" id="AppIcon" name="AppIcon" /></div> 
        

        <div class="uploadChargeTitle">Charge ：</div>
        <div class="uploadCharge"><input type="text" id="AppCharge" name="AppCharge" placeholder="App Charge" value="5" />pt</div>

        <div class="uploadFileTitle">Choose file ：</div>
        <div class="uploadFile"><input type="file" class="fileButton" id="AppWAR" name="AppWAR" /></div>
        

        <div class="submit">
            <input type="button" id="uploadSubmitbutton" value="Submit" onclick="transmit()" />
        </div>
    </div>

    <%@ include  file="./footer.jsp"%>
</body>
</html>