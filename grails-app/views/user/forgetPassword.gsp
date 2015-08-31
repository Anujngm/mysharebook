<%--
  Created by IntelliJ IDEA.
  User: narendra
  Date: 14/8/15
  Time: 4:22 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Forget Password</title>
    <meta name="layout" content="themeAll"/>
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <script src="${resource(dir: 'js', file: 'jquery-1.11.3.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jquery.validate.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jquery.validate.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'sweetalert.min.js')}"></script>
    <link href="${resource(dir: 'css', file: 'sweetalert.css')}" rel="stylesheet">

</head>

<body>
<br><br><br>
<div class="col-md-1"></div>

<div class="col-md-10">
    <form method="get" id="forgetPasswordForm" style="margin-left: 0px"
          action="${createLink(controller: "user", action: "forgetPassword")}">
        <div class="col-md-6">

        <div class="form-group">
            <label for="username_id" class="col-md-3">User Name:</label>

            <div class="col-md-9">
                <input type="text" class="form-control" required="required" name="username" id="username_id"/><br>
            </div>
        </div>
        </div>
        <div class="col-md-6">
        <div class="form-group">
            <label for="email_id" class="col-md-3">Email:</label>

            <div class="col-md-9">
                <input type="email" class="form-control" required="required" name="email" id="email_id"/><br>
            </div>
            <g:submitButton name="Submit" style="margin-top: 20px" class="btn btn-primary" value="submitButton"
                            id="submit_btn"/>
        </div>
            </div>
    </form>
</div>

<div class="col-md-1"></div>
<g:if test="${flash.message}">
    <div style="width: 100px;height: 50px">
        <script>
            sweetAlert("${flash.message}");
        </script>
    </div>
</g:if>
</body>
</html>
