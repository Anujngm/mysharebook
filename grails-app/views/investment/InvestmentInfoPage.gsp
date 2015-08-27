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
%{--send selected company id with other data--}%
<div class="col-md-2"></div>

<div class="col-md-8">
    <h1 style="text-align: center"><strong>Enter Details to make Investment</strong></h1>
    <form>
        <div class="form-group">
            <label for="investmentCategory" class="col-md-3">Investment Category:</label>

            <div class="col-md-9">
                <input type="text" required="required" id="investmentCategory" class="form-control"
                       name="investmentCategory"/><br>
            </div>
        </div>

        <div class="form-group">
            <label for="investedNumberOfShare" class="col-md-3">Investor Number Of Share:</label>

            <div class="col-md-9">
                <input type="text" required="required" id="investedNumberOfShare" class="form-control"
                       name="investedNumberOfShare"/><br>
            </div>
        </div>

        <div class="form-group">
            <label for="totalCostBtn_id" class="col-md-3">Investment Total Cost:</label>

            <div class="col-md-9">
                <span id="total"></span><br>
                <input type="button" class="btn btn-default" id="totalCostBtn_id" name="totalCostBtn"
                       onclick="totalCostCalculate()"
                       value="Calculate Total Cost">
            </div>
        </div>
        <br><br>

        <div>
            <div class="col-md-3"><input type="text" id="totalCost"
                                         name="totalCost" hidden="hidden"/></div>
            <br>

            <div class="col-md-9">
                <input type="button" style="margin-top: 10px" class="btn btn-primary" onclick="saveByAjax();"
                       value="Do Investment"><br>
            </div>
        </div>
    </form>
</div>

<div class="col-md-2"></div>

<div class="modal loading fade" id="loading" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            
            <div class="modal-body">
            <img src="${resource(dir: "images",file: "loading.gif")}"/>
            </div>


            
        </div>
    </div>
</div>


<script>
    function totalCostCalculate() {
        var numberOfShares = $("#investedNumberOfShare").val();
        var costPerShare = parseInt(${perShareValue});
        var totalvalue = numberOfShares * costPerShare;
        $("#total").text(totalvalue);
        $("#totalCost").val(totalvalue)
    }
    function saveByAjax() {
        $('#loading').modal('show');
        $.ajax({
            url: "${createLink(controller:'investment',action:'doInvestment')}",
            dataType: 'json',
            data: {
                companyId:${companyId},
                investmentCategory: $("#investmentCategory").val(),
                investedNumberOfShare: $("#investedNumberOfShare").val(),
                totalCost: $("#totalCost").val()
            },
            success: function (temp) {
                %{--window.location.href = "${createLink(controller: "investment",action: "companyListToInvest")}";--}%
                //   $("#article_"+id).hide();
                //   $("#article_"+id).hide();
                //   $("#article_"+id).hide();
                //  $("#article_"+id+" td:nth-child(3)").text("max");
            },
            error: function (request, status, error) {
                window.location.href = "${createLink(controller: "investment",action: "userAlreadyInvested")}";
            }
        });
    }
</script>
</body>
</html>