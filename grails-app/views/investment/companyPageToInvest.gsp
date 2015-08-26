<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Investment Page</title>
    <meta name="layout" content="themeAll"/>
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <script src="${resource(dir: 'js', file: 'jquery-1.11.3.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jquery.dataTables.min.js')}"></script>
</head>

<body>
<br><br>
    <h1 style="text-align: center"><strong>Company Details for Investment</strong></h1>
<div class="row" style="margin-left: 20px;margin-right: 20px">
<div class="col-md-8">
    <table class="table table-condensed">
        <tr class="info">
            <td>Company Name:</td><td>${company.companyName}</td>
        </tr>
        <tr class="info">
            <td>Company Category:</td><td>${company.companyCategory}</td>
        </tr>
        <tr class="info">
            <td>Company Address:</td><td>${company.companyAddress}</td>
        </tr>
        <tr class="info">
            <td>Company OwnerId:</td><td>${company.user.id}</td>
        </tr>
        <tr class="info">
            <td>Company Website:</td><td>${company.companyWebsite}</td>
        </tr>
        <tr class="info">
            <td>Company Number Of Employee:</td><td>${company.companyNumberOfEmployee}</td>
        </tr>
        <tr class="info">
            <td>Company Profile:</td><td>${company.user.profile}</td>
        </tr>
        <tr class="info">
            <td>Company Market:</td><td>${company.companyMarket}</td>
        </tr>
        <br>
    </table>
    %{--<a class="btn btn-primary"--}%
       %{--href="${createLink(controller: "investment", action: "doInvestment", params: [companyId: company.id, companyShares: company.companyCapitalPerShare])}">Prepare Investment</a>--}%
</div>

<div class="col-md-4">
    <img src="${createLink(controller: "company", action: "loadImage", params: [imgName: company.companyImageName])}"
         style="margin-top: 15px" height="200px" width="400px" class="img-thumbnail"/>
</div>
</div>


<br>
<br>
<br>
<br>
<br>

</body>
</html>