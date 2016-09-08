<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home Page</title>
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="/css/jumbotron-narrow.css">
    <link rel="stylesheet" type="text/css" href="/css/home.css">
    <link rel="stylesheet" type="text/css" href="/css/jquery.growl.css"/>
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="/js/jquery.growl.js" type="text/javascript"></script>
</head>

<body>

<div class="container">
	<c:choose>
		<c:when test="${empty emailId}">
			<div class="header clearfix">
		        <nav>
		            <ul class="nav nav-pills pull-right"></ul>
		        </nav>
		        <h3 class="text-muted">Please check your email and click on the link to activate your account</h3>
		    </div>
		</c:when>
		<c:when test="${firstTime eq true}">
			<div class="header clearfix">
		        <nav>
		            <ul class="nav nav-pills pull-right">
		                <li class="active" id="home"><a href="#">Home</a></li>
		                <li id="logout"><a href="#">Logout</a></li>
		            </ul>
		        </nav>
		        <h3 class="text-muted">Welcome to Travel Plan Hub. Why wait? start the plan and explore the places </h3>
		    </div>
		</c:when>
		<c:otherwise>
		    <div class="jumbotron">
		        <h3>Hello ${emailId}!</h3>
		        <%-- <p class="lead">Your nickname is: ${user.nickname}</p>
		        <p class="lead">Your user id is: ${user.userId}</p>
		        <p><img class="avatar" src="${user.picture}"/></p> --%>
		    </div>
		    <div class="row marketing">
		       
		    </div>
		</c:otherwise>
	</c:choose>

    </div>

    <footer class="footer">
        <p> &copy; 2016 Travel Plan Hub Inc</p>
    </footer>

<script type="text/javascript">
    $("#logout").click(function(e) {
        e.preventDefault();
        $("#home").removeClass("active");
        $("#password-login").removeClass("active");
        $("#logout").addClass("active");
        // assumes we are not part of SSO so just logout of local session
        window.location = "${fn:replace(pageContext.request.requestURL, pageContext.request.requestURI, '')}/logout";
    });
</script>

</body>
</html>