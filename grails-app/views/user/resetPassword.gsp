<%--
  Created by IntelliJ IDEA.
  User: narendra
  Date: 14/8/15
  Time: 5:24 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Reset Password</title>
    <meta name="layout" content="themeAll"/>
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <script src="${resource(dir: 'js', file: 'jquery-1.11.3.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jquery.validate.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jquery.validate.min.js')}"></script>
</head>

<body>
<br><br><br><br>
<div class="col-md-1"></div>

<div class="col-md-10">
    <form method="get" action="${createLink(controller: "user", action: "resetPassword")}">
<input type="text" style="visibility: hidden" name="tokenId" value='${params.tokenId}'>
    <div class="col-md-6">
        <div class="form-group">
            <label for="password_id" class="col-md-3">Password:</label>

            <div class="col-md-9">
                <input type="password" class="form-control" minlength="5" required="required" name="password"
                       id="password_id"/><br>
            </div>
        </div>
    </div>

    <div class="col-md-6">
        <div class="form-group">
            <label for="confirm_password_id" class="col-md-3">Confirm Password:</label>

            <div class="col-md-9">
                <input type="password" class="form-control" minlength="5" required="required" name="confirm_password"
                       equalTo="#password_id"
                       id="confirm_password_id"/>
                %{--<span id='message'></span>--}%
            </div>
        </div>
    </div>
        <g:submitButton name="Submit" style="margin-top: 20px" class="btn btn-primary" value="submitButton"
                        id="submit_btn"/>
    </form>
</div>

<div class="col-md-1"></div>
</body>
</html>