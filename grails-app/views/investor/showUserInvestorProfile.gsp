<%--
  Created by IntelliJ IDEA.
  User: narendra
  Date: 11/8/15
  Time: 2:15 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Investor Profile</title>
  <sec:ifAnyGranted roles="ADMIN">
    <meta name="layout" content="headerFooter"/>
  </sec:ifAnyGranted>
    <sec:ifAnyGranted roles="INVESTOR">
        <meta name="layout" content="themeAll"/>
    </sec:ifAnyGranted>

    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <script src="${resource(dir: 'js', file: 'jquery-1.11.3.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
</head>

<body>
<br><br>
<h1 style="text-align: center"><strong>Investor Profile:${investor.investorDisplayName}</strong></h1>
<div class="row" style="margin-left: 20px;margin-right: 20px">
    <div class="col-md-12">
        <table class="table table-condensed">
            <tr class="info">
                <td>Investor Name:</td><td>${investor.investorDisplayName}</td>
            </tr>
            <tr class="info">
                <td>Investor Category:</td><td>${investor.investorCategory}</td>
            </tr>
            <tr class="info">
                <td>Investor Id:</td><td>${investor.id}</td>
            </tr>
            <tr class="info">
                <td>Investor Interest:</td><td>${investor.investorListofInterest}</td>
            </tr>
            <br>
        </table>
    </div>
    %{--<div class="col-md-4">--}%
        %{--<img src="${createLink(controller: "company", action: "loadImage", params: [imgName: companyData.companyImageName])}"--}%
             %{--style="margin-top: 15px" height="200px" width="400px" class="img-thumbnail"/>--}%
    %{--</div>--}%
</div>
</body>
</html>