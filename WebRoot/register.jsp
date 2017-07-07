<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>站点首页面</title>
<link href="css\layout.css" rel="stylesheet" type="text/css" />
</head>
<body>
     <div id="container">
        <div id="header"><%@ include file="header.jsp"%></div>
        <div id="topmenu"><jsp:include page="topmenu.jsp" flush="true"></jsp:include></div>
        <div id="mainContent">
           
            <div id="content"><%@ include file="register0.jsp"%></div>
        </div>
        
         <p>&nbsp;</p>
          <p>&nbsp;</p>
        <div id="footer"><%@ include file="footer.jsp"%></div>
     </div>
</body>
</html>
