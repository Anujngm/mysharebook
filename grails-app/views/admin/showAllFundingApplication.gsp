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
            <ul class="nav nav-tabs">
                <li class="active"><a href="#pending" onclick="getPendingFund()">Pending</a></li>
                <li><a href="#approved" onclick="getApprovedFund()">Approved</a></li>
                <li><a href="#rejected" onclick="getRejectedFund()">Rejected</a></li>
                <li><a href="#completed" onclick="getCompletedFund()">Completed</a></li>
            </ul>


            <div class="tab-content">
                <div id="pending" class="tab-pane fade in active">
                    <h3>Pending Funds</h3>
                        <div id="pendingTable"></div>
                </div>

                <div id="approved" class="tab-pane">
                    <h3>Approved Funds</h3>
                    <div id="approvedTable"></div>
                </div>

                <div id="rejected" class="tab-pane">
                    <h3>Rejected Funds</h3>
                    <div id="rejectedTable"></div>
                </div>

                <div id="completed" class="tab-pane">
                    <h3>Completed Funds</h3>
                    <div id="completedTable"></div>
                </div>
            </div>

        </div>
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
    function getCompletedFund() {
        $.ajax({
            url: "${createLink(controller:'fund',action:'completedFund')}",
            success: function (data) {
                $("#completedTable").html(data)
            },
            error: function (request, status, error) {
                alert("errror1 "+error)
            }
        });
    }
    function getPendingFund() {
        $.ajax({
            url: "${createLink(controller:'fund',action:'pendingFund')}",
            success: function (data) {
                $("#pendingTable").html(data)
            },
            error: function (request, status, error) {
                alert("errror1 "+error)
            }
        });
    }
    function getRejectedFund() {
        $.ajax({
            url: "${createLink(controller:'fund',action:'rejectFund')}",
            success: function (data) {
                $("#rejectedTable").html(data)
            },
            error: function (request, status, error) {
                alert("errror1 "+error)
            }
        });
    }

    function getApprovedFund() {
        $.ajax({
            url: "${createLink(controller:'fund',action:'approvedFund')}",
            success: function (data) {
                $("#approvedTable").html(data)
            },
            error: function (request, status, error) {
                alert("errror1 "+error)
            }
        });
    }


    function statusChangeByAjax(id, status,tab) {
        $.ajax({
            url: "${createLink(controller:'fund',action:'fundingApplicationStatus')}",
            dataType: 'json',
            data: {
                id: id,
                status: status
            },
            success: function (id) {
                $("#fund_"+tab+"_"+id).hide();
            },
            error: function (request, status, error) {
                alert(request)
            }
        });
    }
</script>
</body>
</html>