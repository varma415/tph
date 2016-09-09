<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="css/jquery.growl.css"/>
    <script src="js/jquery.min.js"></script>
    <script src="js/auth0.lock.min.js"></script>
    <script src="js/jquery.growl.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="css/signin-extn.css"/>
</head>
<body>
<div class="container">
 <script type="text/javascript">
        $(function () {
            var lock = new Auth0Lock('Hs6cqle8QxYJtXspCWD2g38eD5FmX7uT', 'travelplanhub.auth0.com', {
              auth: {
                params: {
                	state: '${state}',
                  // change scopes to whatever you like, see https:///scopes
                  // claims are added to JWT id_token - openid profile gives everything
                  scope: 'openid user_id name nickname email picture'
                },
                responseType: 'code',
                redirectUrl: 'http://localhost:3099/callback'
              }
            });
            lock.show();
            
            $('.auth0-lock-name').text('Travel Plan Hub')
          });
  </script>
    
</div>
</body>
</html>