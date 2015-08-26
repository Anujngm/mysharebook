<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Company Profile</title>
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
<div class="row"> <div class="col-md-1"></div>

<div class="col-md-10">
    <h1 style="text-align: center"><strong>Create Investor Profile</strong></h1>

    <form method="get" name="form_id" id="investorProfileForm_id"
          action="${createLink(controller: "investor", action: "createInvestorProfile")}">
        <div class="form-group">
            <label for="investorDisplayName" class="col-md-3">Investor Display Name:</label>

            <div class="col-md-9">
                <input type="text" required="required" id="investorDisplayName" class="form-control"
                       name="investorDisplayName"/><br>
            </div>
        </div>

        <div class="form-group">
            <label for="investorCategory" class="col-md-3">Investor Category:</label>

            <div class="col-md-9">
                <input type="text" required="required" id="investorCategory" class="form-control"
                       name="investorCategory"/><br>
            </div>
        </div>

        <div class="form-group">
            <label for="interests" class="col-md-3">Investor Interests:</label>

            <div class="col-md-9">

                <select name="interest" multiple="multiple" id="interests" style="width: 150px">
                    <option value="Medical">Medical</option>
                    <option value="Education">Education</option>
                    <option value="Finance">Finance</option>
                    <option value="IT">IT</option>
                    <option value="Services">Services</option>
                </select>
                %{--<g:select class="form-control" required="required"--}%
                          %{--from="['Education', 'Finance', 'Medical', 'IT', 'Services']"--}%
                          %{--name="interest"--}%
                          %{--id="interests" onclick="addInterest(this)"/>--}%
                %{--<span id="listOfInterest"></span><br><br>--}%

            </div>
        </div>
        %{--<input type="text" class="col-md-3" style="visibility: hidden" id="listToSend" name="listOfInterest"/>--}%

        <div class="col-md-9">
        <input type="submit" class="btn btn-primary" name="submit" value="Submit"/>
            %{--<input type="submit" class="btn btn-primary" name="submit" value="Submit" onclick="setData()"/>--}%
        </div>
    </form>
</div>

<div class="col-md-1"></div>
<g:if test="${flash.message}">
    <script>
        sweetAlert("${flash.message}");
    </script>
</g:if>

<script>
    $("#investorProfileForm_id").validate({
        rules: {},
        messages: {
            investorDisplayName: {
                required: "Please enter Display Name"
            },
            investorCategory: {
                required: "Please enter category"
            },
            interest: {
                required: "Please enter your interest"
            }
        }
    });

    var itemList = "";
    function addInterest(item) {
        if (itemList.indexOf(item.value) == -1) {
            itemList += item.value + "/";
            $("#listOfInterest").append("<br>" + item.value)
//            list = itemList
        }
    }
    function setData() {
        if (itemList == "") {
            $("#listToSend").val("Education/")
        }
        else {
            $("#listToSend").val(itemList)
        }
//   alert($("#listToSend").val())
    }
</script>
</div>
</body>
</html>