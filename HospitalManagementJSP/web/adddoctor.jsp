
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="header.jsp" />
    </head>
    <body>
        <jsp:include page="navigationbar2.jsp" /> 
        
        <div class="container" style="margin-top:50px">
            <h1 class="text-center" style="color: #E6120E">Add Doctor</h1>
            <form action="mycontroller.jsp" method="post">
                <input type="hidden" name="page" value="adddoctor">
                <div class="form-group">
                    <label>Doctor Name</label>
                    <input type="text" name="doctorname" class="form-control">
                    
                    <label>Specialization</label>
                    <input type="text" name="specialization" class="form-control">
                    
                    <label>Contact</label>
                    <input type="text" name="contact" class="form-control">
                    <br>
                    <input type="submit" class="btn btn-primary form-control" name="save" value="submit">
                </div>
            </form>
            
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
