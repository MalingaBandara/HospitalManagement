
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset=UTF-8">
        <meta name="viewport" content="width-device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        
        <jsp:include page="header.jsp" />
    </head>
    <body>
        <jsp:include page="navigationbar1.jsp" />
        
        <div class="container" style="margin-top: 100px">
            
            <div class="row">
                <div class="col-sm-3">
                    
                </div>
                <div class="col-sm-6">
                    
                    <h1 class="text-center" style="">Admin Login</h1>
                    
                    <form method = "post" action="mycontroller.jsp" >
                        <input type="hidden" name="page" value="adminlogin">
                        <div class="form-group">
                            <label>UserName</label>
                            <input type="text" class="form-control" placeholder="UserName" name="adminname">
                            
                            <label>Password</label>
                            <input type="password" class="form-control" placeholder="Password" name="password">
                            <br>
                            <input type="submit" class="btn btn-primary form-control" value="Login">
                            
                            <br>
                            <br>
                            <a href="home.html">User Main Page</a> 
                        </div>
                    
                    </from>
                    
                </div>
            </div>
            
        </div>
        
       <script type="text/javascript">
    (function(d, m){
        var kommunicateSettings = 
            {"appId":"298e61e0d875f49d243df2749c488db36","popupWidget":true,"automaticChatOpenOnNavigation":true};
        var s = document.createElement("script"); s.type = "text/javascript"; s.async = true;
        s.src = "https://widget.kommunicate.io/v2/kommunicate.app";
        var h = document.getElementsByTagName("head")[0]; h.appendChild(s);
        window.kommunicate = m; m._globals = kommunicateSettings;
    })(document, window.kommunicate || {});
/* NOTE : Use web server to view HTML files as real-time update will not work if you directly open the HTML file in the browser. */
</script> 
    </body>
</html>
