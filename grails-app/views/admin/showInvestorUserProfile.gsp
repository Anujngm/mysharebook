<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>User Page</title>
    <meta name="layout" content="headerFooter"/>
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <script src="${resource(dir: 'js', file: 'jquery-1.11.3.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jquery.dataTables.min.js')}"></script>
</head>

<body>
<br><br>

<div class="col-md-2"></div>

<div class="col-md-8">
    <h1 style="text-align: center"><strong>User Profile:${user.username}</strong></h1>
    <table class="table table-bordered">
        <tr class="info">
            <td>Address:</td><td>${user.address}</td>
        </tr>
        <tr class="info">
            <td>Email Id:</td><td>${user.email}</td>
        </tr>
        <tr class="info">
            <td>Contact:</td><td>${user.contact}</td>
        </tr>
        <tr class="info">
            <td>Profile:</td><td>${user.profile}</td>
        </tr>
        <tr class="info">
            <td>Date of creation:</td><td>${user.dateCreated.dateString}</td>
        </tr>
        <br>
    </table>
</div>
<div class="col-md-2"></div>
</body>
</html>