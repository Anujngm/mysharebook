<%--
  Created by IntelliJ IDEA.
  User: narendra
  Date: 24/8/15
  Time: 7:03 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Raise Fund</title>
    <meta name="layout" content="themeAll"/>
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <script src="${resource(dir: 'js', file: 'jquery-1.11.3.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jquery.validate.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'sweetalert.min.js')}"></script>
    <link href="${resource(dir: 'css', file: 'sweetalert.css')}" rel="stylesheet">
</head>

<body>
<br><br>

<div class="col-md-1">&nbsp;</div>

<div class="col-md-10">
    <h1 style="text-align: center"><strong>Funding Application</strong></h1>

    <form method="post" id="companyProfileForm_id"
          action="${createLink(controller: "fund", action: "createFundingProfile")}">
        <div class="form-group">
            <label for="amountId" class="col-md-3">Loan amount:</label>

            <div class="col-md-9">
                <input type="number" min="100" required="required" id="amountId" class="form-control"
                       name="amount"/><br>
            </div>
        </div>

        <div class="form-group">
            <label for="repaymentSchemeId" class="col-md-3">Repayment Scheme:</label>

            <div class="col-md-9">
                <g:select class="form-control" required="required" from="['Yearly', 'Monthly']"
                          name="repaymentScheme"
                          id="repaymentSchemeId"/><br>
            </div>
        </div>

        <div class="form-group">
            <label for="loanTenureId" class="col-md-3">Loan Tenure:</label>

            <div class="col-md-3">
                <input type="number" min="1" required="required" id="loanTenureId" class="form-control"
                       name="loanTenure"/>
            </div>

            <div class="col-md-6">
                <g:select class="form-control" required="required" from="['Year', 'Month']"
                          name="loanTenureMonthOrYear"
                          id="loanTenureMonthOrYearId"/><br>
            </div>
        </div>


        <div class="form-group">
            <label for="capitalPerShareId" class="col-md-3">Capital per Share:</label>

            <div class="col-md-9">
                <input type="number" min="1" required="required" id="capitalPerShareId" class="form-control"
                       name="capitalPerShare"/><br>
            </div>
        </div>

        <div class="form-group">
            <label for="rateOfInterestId" class="col-md-3">Rate of interest:</label>

            <div class="col-md-2">
                <input type="number" value="4" disabled="disabled" required="required" id="rateOfInterestId"
                       class="form-control"
                       name="rateOfInterest"/>
            </div>

            <div class="col-lg-7">%</div><br>
        </div>


        <div style="margin-top: 20px;margin-bottom: 20px" class="col-md-12">
            <div class="col-md-3"></div>

            <div class="col-md-2">
                <g:submitButton name="Submit Loan Application" class="btn btn-primary" value="Submit"/>
            </div>

            <div class="col-lg-7"></div><br>
        </div>

    </form>

</div>

<div class="col-md-1">

    &nbsp;</div>

<script>
    $("#companyProfileForm_id").validate({
        rules: {},
        messages: {
            amount: {
                required: "Please enter funding amount"
            },
            repaymentScheme: {
                required: "Please select payment scheme"
            },
            loanTenure: {
                required: "Please enter funding tenure"
            },
            capitalPerShare: {
                required: "Please enter capital per share for your company"
            }
        }
    });

</script>
<g:if test="${flash.message}">
    <script>
        sweetAlert("${flash.message}");
    </script>
</g:if>

</body>
</html>