
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Investment Application</title>
    <meta name="layout" content="headerFooter"/>
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <script src="${resource(dir: 'js', file: 'jquery-1.11.3.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jquery.validate.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'sweetalert.min.js')}"></script>
    <link href="${resource(dir: 'css', file: 'sweetalert.css')}" rel="stylesheet">
</head>

<body>
<!-- Modal -->
<div class="modal fade" id="myRejectModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Comment for rejection:</h4>
            </div>

            <div class="modal-body">
                <div class="col-md-12">
                    <input type="number" id="id" hidden="hidden">
                    <input type="text" id="status" hidden="hidden">
                    <input type="text" id="tab" hidden="hidden">

                    <input type="text" id="comment">
                    <input type="submit" id="submit" onclick="commentAndgetRejectFund()">

                </div>
            </div>

            <div class="modal-footer" style="border: hidden">
            </div>
        </div>
    </div>
</div>

<div class="row">

    <div class="col-md-12">
        <center><h1>Investment application for approval or rejection</h1></center>

        <div class="container">
            <ul class="nav nav-tabs">
                <li class="active"><a href="#pending" onclick="getPendingInvestment()">Pending Investments</a></li>
                <li><a href="#approved" onclick="getApprovedInvestment()">Approved Investments</a></li>
                <li><a href="#rejected" onclick="getRejectedInvestment()">Rejected Investments</a></li>
            </ul>


            <div class="tab-content">
                <div id="pending" class="tab-pane fade in active">
                    <h3>Pending Investments</h3>

                    <div id="pendingTable"></div>
                </div>

                <div id="approved" class="tab-pane">
                    <h3>Approved Investments</h3>

                    <div id="approvedTable"></div>
                </div>

                <div id="rejected" class="tab-pane">
                    <h3>Rejected Investments</h3>

                    <div id="rejectedTable"></div>
                </div>
            </div>

        </div>
    </div>
</div>
<script>
    $(document).ready(function () {
        $(".nav-tabs a").click(function () {
            $(this).tab('show');
        });
        getPendingFund();
    });
</script>
<script>
    function rejectComment(id, status, tab) {
        $("#id").val(id)
        $("#status").val(status);
        $("#tab").val(tab);
        $("#myRejectModal").modal('show');
    }
    function commentAndgetRejectFund() {
        $.ajax({
            url: "${createLink(controller:'admin',action:'saveInvestmentRejectionComment')}",
            dataType: 'json',
            data: {
                id: $("#id").val(),
                comment: $("#comment").val()
            },
            success: function (temp) {
                $("#myRejectModal").modal('hide');
                statusChangeByAjax($("#id").val(), $("#status").val(), $("#tab").val())
            },
            error: function (request, status, error) {
                alert("error2" + request)
            }
        });

    }
    function getPendingFund() {
        $.ajax({
            url: "${createLink(controller:'investment',action:'pendingInvestment')}",
            success: function (data) {
                $("#pendingTable").html(data)
            },
            error: function (request, status, error) {
                alert("errror1 " + error)
            }
        });
    }
    function getRejectedInvestment() {
        $.ajax({
            url: "${createLink(controller:'investment',action:'rejectInvestment')}",
            success: function (data) {
                $("#rejectedTable").html(data)
            },
            error: function (request, status, error) {
                alert("errror1 " + error)
            }
        });
    }

    function getApprovedInvestment() {
        $.ajax({
            url: "${createLink(controller:'investment',action:'approvedInvestment')}",
            success: function (data) {
                $("#approvedTable").html(data)
            },
            error: function (request, status, error) {
                alert("errror1 " + error)
            }
        });
    }


    function statusChangeByAjax(id, status, tab) {
        if (status == "reject") {
            rejectComment(id, "REJECTED", tab);
        }
        else {
            $.ajax({
                url: "${createLink(controller:'investment',action:'investmentApplicationStatus')}",
                dataType: 'json',
                data: {
                    id: id,
                    status: status
                },
                success: function (id) {
                    $("#investment_" + tab + "_" + id).hide();
                },
                error: function (request, status, error) {
                    alert(request)
                }
            });
        }
    }
</script>
</body>
</html>