<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>User Log In</title>
    <meta name="layout" content="themeAll"/>
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <script src="${resource(dir: 'js', file: 'jquery-1.11.3.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
    <script src="${resource(dir: 'js',file: 'jquery.validate.min.js')}"></script>
</head>
<body>
<h1 style="text-align: center"><strong>Enter Login Details</strong></h1>

<div id='login' style="margin-top: 10%;margin-left: 30%">
    <div>
        <g:if test='${flash.message}'>
            <div style="color: #cc3333" class='login_message'>${flash.message}</div>
        </g:if>

        <form action='${postUrl}' method='POST' id='loginForm' style="width: 40%" autocomplete='off'>
            <p>

            <div class="form-group">
                <label for="username">Username:</label>
                <input type='text' autofocus="autofocus"  required class='form-control' name='j_username' id='username'/>
            </div>
        </p>
            <p>

            <div class="form-group">
                <label for="password">Password:</label>
                <input type='password' class='form-control' required name='j_password' id='password'/>
            </div>
        </p>
            <p>
                <input type='submit' id="submit" class="btn btn-success"
                       value='${message(code: "springSecurity.login.button")}'/>
            </p>
        </form>
        <a href="${createLink(controller: "user",action: "forgetPassword")}"><Strong>Forget Password</Strong></a>

    </div>
</div>
<script>
    $("#loginForm").validate({
        rules:{},
        messages:{
            j_username:{
                required:"Please enter username"
            },
            j_password:{
                required:"Please enter password"
            }
        }
    });
</script>
</body>
</html>