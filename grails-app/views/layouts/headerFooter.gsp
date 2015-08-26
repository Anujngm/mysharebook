<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Welcome to SharesBook.com</title>
    <meta name="layout" content="headerFooter"/>
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <script src="${resource(dir: 'js', file: 'jquery-1.11.3.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="${resource(dir: 'js', file: 'sweetalert.min.js')}"></script>
    <link href="${resource(dir: 'css', file: 'sweetalert.css')}" rel="stylesheet">
    <style>
    #header {
        background-color: transparent;
        padding: 0px;
        text-align: left;
        position: fixed;
        margin-outside: 10px;
        top: 0px;
        left: 0px
    }

    #footer {
        background-color: transparent;
        text-align: left;
    }
    </style>
    <g:layoutHead/>
</head>

<body>
<div class="container-fluid">
    <g:render template="/layouts/navbar"/>
    <div class="row">
        <g:layoutBody/>
        <div class="col-sm-12" id="footer">
            <b style="padding-left: 85%">#Copyright Nexthought</b><br>
            <b style="padding-left: 85%">Created By:Nexthought</b>
        </div>
    </div>
</div>
</body>
</html>