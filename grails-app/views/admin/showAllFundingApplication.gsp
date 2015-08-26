<%--
  Created by IntelliJ IDEA.
  User: narendra
  Date: 25/8/15
  Time: 5:58 PM
--%>

<%@ page import="com.LoanStatus" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Funding Application</title>
    <meta name="layout" content="headerFooter"/>
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <script src="${resource(dir: 'js', file: 'jquery-1.11.3.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jquery.validate.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'sweetalert.min.js')}"></script>
    <link href="${resource(dir: 'css', file: 'sweetalert.css')}" rel="stylesheet">
</head>

<body>
<div class="row">
    <div class="col-md-1"></div>

    <div class="col-md-11">
        <h1>Funding application for approval or rejection</h1>

        <div class="container">
            abhhbhjsbbash9
            <ul class="nav nav-tabs">
                <li class="active"><a href="#pending">Pending</a></li>
                <li><a href="#approved">Approved</a></li>
                <li><a href="#rejected">Rejected</a></li>
                <li><a href="#completed">Completed</a></li>
            </ul>


            <div class="tab-content">
                <div id="pending" class="tab-pane fade in active">
                    <h3>Pending Funds</h3>
                   <g:render template="fundTable" model="[funding:funding]"/>
                                   </div>

                <div id="approved" class="tab-pane">
                    <h3>Approved Funds</h3>
                    <g:render template="fundTable" model="[funding:approvedFund]"/>

                </div>

                <div id="rejected" class="tab-pane">
                    <h3>Rejected Funds</h3>

                    <table id="table_funds_rejected" style="width: 90%;margin-left: inherit"
                           class="table table-row-cell">
                        <thead>
                        <tr>
                            <th class="dt-head-left">Company Name</th>
                            <th class="dt-head-left">Amount Required</th>
                            <th class="dt-head-left">Loan Tenure</th>
                            <th class="dt-head-left">Rate of Interest</th>
                            <th class="dt-head-left">Repayment Scheme</th>
                            <th class="dt-head-left">Capital per Share</th>
                            <th class="dt-head-left">Date of submission</th>
                            <th class="dt-head-left">Status</th>
                            <th class="dt-head-left">Action</th>
                        </tr>
                        </thead>
                        <tbody class="td-body-center">
                        <g:each in="${funding}" var="fund">
                            <g:if test="${fund.loanStatus.toString() == "Rejected"}">

                                <tr id="company_${fund?.id}">

                                    <td class="dt-body-left">${fund.company.companyName}</td>
                                    <td class="dt-body-left">$${fund.amount}</td>
                                    <td class="dt-body-left">${fund.loanTenure}&nbsp;${fund.loanTenureMonthOrYear}</td>
                                    <td class="dt-body-left">${fund.rateOfInterest}%</td>
                                    <td class="dt-body-left">${fund.repaymentScheme}</td>
                                    <td class="dt-body-left">$${fund.capitalPerShare}</td>
                                    <td class="dt-body-left">${fund.dateCreated.dateString}</td>
                                    <td class="dt-body-left">${fund.loanStatus.toString()}</td>
                                    <td class="dt-body-center">
                                        <div class="row">
                                            <a href="javascript:void(0)" class="btn btn-success"
                                               onclick="statusChangeByAjax('${fund.id}', '${LoanStatus.APPROVED.key}')"><strong
                                                    style="color: black">Approve</strong></a>
                                            <a href="javascript:void(0)" class="btn btn-danger"
                                               onclick="statusChangeByAjax('${fund.id}', '${LoanStatus.REJECTED.key}')"><strong
                                                    style="color: black">Reject</strong></a>
                                            <a href="javascript:void(0)" class="btn btn-primary"
                                               onclick="statusChangeByAjax('${fund.id}', '${LoanStatus.COMPLETED.key}')"
                                               style="margin-top: 3px"><strong style="color: black">Complete</strong>
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                            </g:if>
                        </g:each>
                        </tbody>
                    </table>
                </div>

                <div id="completed" class="tab-pane">
                    <h3>Completed Funds</h3>
                    <table id="table_funds_completed" style="width: 90%;margin-left: inherit"
                           class="table table-row-cell">
                        <thead>
                        <tr>
                            <th class="dt-head-left">Company Name</th>
                            <th class="dt-head-left">Amount Required</th>
                            <th class="dt-head-left">Loan Tenure</th>
                            <th class="dt-head-left">Rate of Interest</th>
                            <th class="dt-head-left">Repayment Scheme</th>
                            <th class="dt-head-left">Capital per Share</th>
                            <th class="dt-head-left">Date of submission</th>
                            <th class="dt-head-left">Status</th>
                            <th class="dt-head-left">Action</th>
                        </tr>
                        </thead>
                        <tbody class="td-body-center">
                        <g:each in="${funding}" var="fund">
                            <g:if test="${fund.loanStatus.toString() == "Completed"}">

                                <tr id="company_${fund?.id}">

                                    <td class="dt-body-left">${fund.company.companyName}</td>
                                    <td class="dt-body-left">$${fund.amount}</td>
                                    <td class="dt-body-left">${fund.loanTenure}&nbsp;${fund.loanTenureMonthOrYear}</td>
                                    <td class="dt-body-left">${fund.rateOfInterest}%</td>
                                    <td class="dt-body-left">${fund.repaymentScheme}</td>
                                    <td class="dt-body-left">$${fund.capitalPerShare}</td>
                                    <td class="dt-body-left">${fund.dateCreated.dateString}</td>
                                    <td class="dt-body-left">${fund.loanStatus.toString()}</td>
                                    <td class="dt-body-center">
                                        <div class="row">
                                            <a href="javascript:void(0)" class="btn btn-success"
                                               onclick="statusChangeByAjax('${fund.id}', '${LoanStatus.APPROVED.key}')"><strong
                                                    style="color: black">Approve</strong></a>
                                            <a href="javascript:void(0)" class="btn btn-danger"
                                               onclick="statusChangeByAjax('${fund.id}', '${LoanStatus.REJECTED.key}')"><strong
                                                    style="color: black">Reject</strong></a>
                                            <a href="javascript:void(0)" class="btn btn-primary"
                                               onclick="statusChangeByAjax('${fund.id}', '${LoanStatus.COMPLETED.key}')"
                                               style="margin-top: 3px"><strong style="color: black">Complete</strong>
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                            </g:if>
                        </g:each>
                        </tbody>
                    </table>
                </div>
            </div>

        </div>

        <hr>






        %{--<table id="table_article" style="width: 90%;margin-left: inherit" class="table table-row-cell">--}%
        %{--<thead>--}%
        %{--<tr>--}%

        %{--<th class="dt-head-left">Company Name</th>--}%
        %{--<th class="dt-head-left">Amount Required</th>--}%
        %{--<th class="dt-head-left">Loan Tenure</th>--}%
        %{--<th class="dt-head-left">Rate of Interest</th>--}%
        %{--<th class="dt-head-left">Repayment Scheme</th>--}%
        %{--<th class="dt-head-left">Capital per Share</th>--}%
        %{--<th class="dt-head-left">Date of submission</th>--}%
        %{--<th class="dt-head-left">Status</th>--}%
        %{--<th class="dt-head-left">Action</th>--}%
        %{--</tr>--}%
        %{--</thead>--}%
        %{--<tbody class="td-body-center">--}%
        %{--<div id="listCompany">--}%
        %{--<g:each in="${funding}" var="fund">--}%
        %{--<tr id="company_${fund?.id}">--}%
        %{--<td id="td1" class="dt-body-left">${fund.company.companyName}</td>--}%
        %{--<td id="td2" class="dt-body-left">$${fund.amount}</td>--}%
        %{--<td id="td3" class="dt-body-left">${fund.loanTenure}&nbsp;${fund.loanTenureMonthOrYear}</td>--}%
        %{--<td id="td4" class="dt-body-left">${fund.rateOfInterest}%</td>--}%
        %{--<td id="td5" class="dt-body-left">${fund.repaymentScheme}</td>--}%
        %{--<td id="td6" class="dt-body-left">$${fund.capitalPerShare}</td>--}%
        %{--<td id="td7" class="dt-body-left">${fund.dateCreated.dateString}</td>--}%
        %{--<td id="td8" class="dt-body-left">${fund.loanStatus.toString()}</td>--}%
        %{--<td id="td9" class="dt-body-center">--}%
        %{--<div class="row">--}%
        %{--<a href="javascript:void(0)" class="btn btn-success"--}%
        %{--onclick="statusChangeByAjax('${fund.id}', '${LoanStatus.APPROVED.key}')"><strong--}%
        %{--style="color: black">Approve</strong></a>--}%
        %{--<a href="javascript:void(0)" class="btn btn-danger"--}%
        %{--onclick="statusChangeByAjax('${fund.id}', '${LoanStatus.REJECTED.key}')"><strong--}%
        %{--style="color: black">Reject</strong></a>--}%
        %{--<a href="javascript:void(0)" class="btn btn-primary"--}%
        %{--onclick="statusChangeByAjax('${fund.id}', '${LoanStatus.COMPLETED.key}')"--}%
        %{--style="margin-top: 3px"><strong style="color: black">Complete</strong></a>--}%
        %{--</div>--}%
        %{--</td>--}%
        %{--</tr>--}%
        %{--</g:each>--}%
        %{--</div>--}%
        %{--</tbody>--}%
        %{--</table>--}%
    </div>

    <div class="col-md-1"></div>
</div>
<script>
    $(document).ready(function () {
        $(".nav-tabs a").click(function () {
            $(this).tab('show');
        });

    });
</script>
<script>
    function statusChangeByAjax(id, status) {
        $.ajax({
            url: "${createLink(controller:'fund',action:'fundingApplicationStatus')}",
            dataType: 'json',
            data: {
                id: id,
                status: status
            },
            success: function (id) {
                location.reload()
            },
            error: function (request, status, error) {
                alert(request)
            }
        });
    }
</script>
</body>
</html>