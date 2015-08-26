<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Funding Profile</title>
    <meta name="layout" content="themeAll"/>
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <script src="${resource(dir: 'js', file: 'jquery-1.11.3.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
</head>

<body>
<br><br>

<div class="col-md-2"></div>

<div class="col-sm-8">
    <h1 style="text-align: center"><strong>Funding Application</strong></h1>
    <table class="table table-view table-row-cell">
        <tr>
            <td>Company Name::</td><td>${funding.company.companyName}</td>
        </tr>
        <tr>
            <td>Funding amount:</td><td>${funding.amount}</td>
        </tr>
        <tr>

            <td>Approval status:</td><td>${funding.loanStatus}</td>

        </tr>
        <tr>
            <td>Funding Tenure:</td><td>${funding.loanTenure}&nbsp;${funding.loanTenureMonthOrYear}</td>
        </tr>
        <tr>
            <td>Capital per share:</td><td>$${funding.capitalPerShare}</td>
        </tr>
        <tr>
            <td>Rate of interest:</td><td>${funding.rateOfInterest}</td>
        </tr>
        <tr>
            <td>Repayment scheme:</td><td>${funding.repaymentScheme}</td>
        </tr>
    </table>

</div>

<div class="col-md-2"></div>
</body>
</html>