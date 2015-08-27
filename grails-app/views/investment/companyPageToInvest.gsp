<%@ page import="sharesbook.Investment" contentType="text/html;charset=UTF-8" %>
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

<center><h1>Company Details for Investment</h1></center>

<div class="row">

    <div class="col-md-5">

        <img src="${createLink(controller: "company", action: "loadImage", params: [imgName: company.companyImageName])}"
             style="margin-top: 15px;margin-left: 20px" height="200px" width="500px" class="img-thumbnail"/>
        <br><br>
        <g:if test="${exists=="true"}">
            <center>
                Already INVESTED!!!<br>
                <a href="${createLink(controller: "investment",action: "showMyInvestment")}">Show My Investment</a>
            </center>
        </g:if>
        <g:elseif test="${funding.loanStatus.toString() != "Approved"}">
            <center>
                <span>Loan status is ${funding.loanStatus}!!! Cannot invest in this company...</span>
            </center>
        </g:elseif>
        <g:else>
            <center>
                <a class="btn btn-success" href="${createLink(controller: "investment", action: "doInvestment", params: [companyId: company.id, companyShares: funding.capitalPerShare])}">Prepare Investment</a>
            </center>
        </g:else>
    </div>

    <div class="col-md-7">
        <h1 class="product-title">${company.companyName}</h1>

        <h3 class="product-code">Company Code : ${company.id}</h3>


        <hr>

        <div class="col-md-12">
            <div class="col-md-6">
                <h2>Company Details</h2>
                Company Category:${company.companyCategory}<br>
                Company Address:${company.companyAddress}<br>
                Company OwnerId:${company.user.id}<br>
                Company Website:<a href="${company.companyWebsite}">${company.companyWebsite}</a> <br>
                Company Number Of Employee:${company.companyNumberOfEmployee}<br>
                Company Profile:${company.user.profile}<br>
                Company Market:${company.companyMarket}<br>
            </div>

            <div style="color:black" class="col-md-6">
                <h2>Investment Details</h2>
                Amount Required:$${funding.amount}<br>
                Capital Per Share:$${funding.capitalPerShare}<br>
                Rate of Interest:${funding.rateOfInterest}%<br>
                Loan Status:${funding.loanStatus}<br>
                Loan Tenture:${funding.loanTenure}${funding.loanTenureMonthOrYear}<br>
                Repayment Scheme:${funding.repaymentScheme}<br>

            </div>
        </div>

        <div class="details-description">
            <p>Soon company info column will be added to company profile</p>
        </div>

        <div class="cart-actions">
            <h3 class="incaps"><i class="glyphicon glyphicon-lock"></i>good deal to invest</h3>
        </div>


        <div class="">
            <ul class="nav nav-tabs">
                <li class="active">
                    <a href="#details">Details</a>
                    %{--<a href="#details" data-toggle="tab">Details</a></li>--}%
                <li><a href="#investment" data-toggle="tab">Funding</a></li>

            </ul>

            <div class="tab-content">
                <div id="details">
                </div>

                <div class="tab-pane" id="investment">
                </div>

            </div>

        </div>
    </div>
</div>

<br>
<br>

</body>
</html>