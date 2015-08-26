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
<div class="col-md-1">&nbsp;</div>

<div class="col-md-10">

    <h1 style="text-align: center"><strong>Create Company Profile</strong></h1>
    <form method="post" enctype="multipart/form-data" id="companyProfileForm_id"
          action="${createLink(controller: "company", action: "createCompanyProfile")}">
        <div class="form-group">
            <label for="companyNameId" class="col-md-3">Company Name:</label>

            <div class="col-md-9">
                <input type="text" required="required" autofocus="autofocus" id="companyNameId" class="form-control"
                       name="companyName"/><br>
            </div>
        </div>

        <div class="form-group">
            <label for="companyCategoryId" class="col-md-3">Company Category:</label>

            <div class="col-md-9">
                <g:select class="form-control" required="required" from="['High Profile', 'Medium Profile', 'Low Profile']"
                          name="companyCategory"
                          id="companyCategoryId"/><br>
            </div>
        </div>

        <div class="form-group">
            <label for="companyAddressID" class="col-md-3">Company Address:</label>

            <div class="col-md-9">
                <input type="text" required="required" class="form-control" id="companyAddressID"
                       name="companyAddress"/><br>

            </div>
        </div>

        <div class="form-group">
            <label for="companyWebsiteId" class="col-md-3">Company Website URL:</label>

            <div class="col-md-9">
                <input type="url" required="required" class="form-control" name="companyWebsite"
                       id="companyWebsiteId"/><br>
            </div>
        </div>

        <div class="form-group">
            <label for="companyNumberOfEmployeeId" class="col-md-3">Number of Employee:</label>

            <div class="col-md-9">
                <input type="number" required="required" min="0" class="form-control" id="companyNumberOfEmployeeId"
                       name="companyNumberOfEmployee"/><br>
            </div>
        </div>

        <div class="form-group">
            <label for="companyMarketId" class="col-md-3">Comapany Market:</label>

            <div class="col-md-9">
                <input type="text" required="required" class="form-control" id="companyMarketId"
                       name="companyMarket"/><br>
            </div>
        </div>


        File: <input type="file" name="myFile"/>

        <div class="col-md-3">

        </div>

        <div class="col-md-9">
            <g:submitButton name="submit" class="btn btn-primary" value="Submit"/>
        </div>
    </form>

</div>

<div class="col-md-1">

    &nbsp;</div>

<script>
    $("#companyProfileForm_id").validate({
        rules:{},
        messages:{
            companyName:{
                required:"Please enter Company Name"
            },
            companyCategory:{
                required:"Please enter category"
            },
            companyAddress:{
                required:"Please enter Company Address"
            },
            companyWebsite:{
                required:"Please enter Company Website",
                url:"Please enter correct URL"
            },
            companyMarket:{
                required:"Please enter your Company Specific Market"
            },
            companyNumberOfEmployee:{
                required:"Please enter Number of Employees in company"
            },
            companyCapitalPerShare:{
                required:"Please enter Capital per Share"
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
