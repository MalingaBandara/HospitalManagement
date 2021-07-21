
<jsp:useBean id="pDAO" class="mypackage.DataBaseClass" scope="page"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% if(session.getAttribute("username")==null)
    {
        response.sendRedirect("index.jsp");
    }   
%>
<!DOCTYPE html>
<html>
    <head>
        <head>
        <meta charset=UTF-8">
        
        
        <jsp:include page="header.jsp" />
    </head>
    <body>
    <jsp:include page="navigationbar2.jsp" />
    
    <div class = container style = "margin-top: 100px ; font-weight : bold">
     <div class = row>
         <div class="col-sm-4 text-center" style="background-color : white ; height : 100px ; font-size : 20pt ; font-family: cursive">
             <img src = "images/docter button1.jpg"> 
             <p style = "color : purple"> <%= pDAO.totaldoctors() %><p>
         </div>
         <div class="col-sm-4 text-center" style="background-color : white ; height : 100px ; font-size : 20pt ; font-family: cursive">
             <img src = "images/patient button1.jpg"> 
             <p style = "color : purple"> <%= pDAO.totalpatient() %><p>
         </div>
         <div class="col-sm-4 text-center" style="background-color : white ; height : 100px ; font-size : 20pt ; font-family: cursive">
             <img src = "images/appointment button1.png"> 
             <p style = "color : purple"> <%= pDAO.totalappointment() %><p>
         </div>
		 
     </div>  
 </div>
<br>
<br>
<br>
<br>
<br>
<br>
<footer class="site-footer">
      <div class="container">
        

        
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <h2 style = "font-weight : bold">
          
             <script>document.write(new Date().getFullYear());</script> 
           
            </h2>
			<h4 style = "font-weight : bold ; color : blue" >
          
            Designed And Developed By <br>
            <span style = "color : red">T.RAVINDIRRAN 10707352<br> H.N RATHNASEKARA 10707345<br> K.M.D.M BANDARA 10707145<br>H.K ABHISHEKA 10707124<br>J.H.A.C.H JAYASEKARA 10707226<br>S.M.D NAWARATHNA 10707290</span>
           
            </h2>
          </div>
          
        </div>
      </div>
    </footer>

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
