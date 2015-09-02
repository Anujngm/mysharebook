<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>My Investements</title>
    <sec:ifAnyGranted roles="ADMIN">
        <meta name="layout" content="headerFooter"/>
    </sec:ifAnyGranted>
    <sec:ifAnyGranted roles="INVESTOR">
        <meta name="layout" content="themeAll"/>
    </sec:ifAnyGranted>
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <script src="${resource(dir: 'js', file: 'jquery-1.11.3.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jquery.validate.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jquery.validate.min.js')}"></script>
</head>

<body>
<br><br>

<div class="col-md-2"></div>

<div class="col-sm-8">
    <h1 style="text-align: center"><strong>Investments</strong></h1>
    <g:if test="${investments.empty}">
      <h2 style="text-align: center">NO INVESTMENT DONE YET!!!</h2>
    </g:if>
    <g:else>
        <g:each in="${investments}" var="investment">
            <div class="order-box">
                <div class="order-box-header">
                    Company Name:&nbsp;&nbsp;${investment.company.getCompanyName()}</div>

                <div class="order-box-content">
                    <table class="table table-view">
                        <tr>
                            <td>Company Name:</td><td>${investment.company.getCompanyName()}</td>
                        </tr>
                        <tr>

                            <td>Company URL:</td><td><a
                                href="${investment.company.getCompanyWebsite()}">${investment.company.getCompanyWebsite()}</a>
                        </td>

                        </tr>
                        <tr>
                            <td>Investment Status:</td><td>${investment.investmentStatus.getValue()}</td>
                        </tr>
                        <tr>
                            <td>Number of Shares invested:</td><td>${investment.investedNumberOfShare}</td>
                        </tr>
                        <tr>
                            <td>Total cost:</td><td>$${investment.totalCost}</td>
                        </tr>
                    </table>
                    <strong>About company:</strong>

                    <p><i>Soon Company detail column will be added to company profile%{-- ${investment.company.}--}%</i>
                    </p>
                </div>

                <p>=======================================================================================================</p>
            </div>
        </g:each>
    </g:else>
</div>

<div class="col-md-2"></div>
</body>
</html>