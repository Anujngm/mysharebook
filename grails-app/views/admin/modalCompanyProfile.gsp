<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Comapnay Profile</title>
    <meta name="layout" content="headerFooter"/>
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <script src="${resource(dir: 'js', file: 'jquery-1.11.3.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jquery.validate.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'sweetalert.min.js')}"></script>
    <link href="${resource(dir: 'css', file: 'sweetalert.css')}" rel="stylesheet"></head>

<body>
<div class="row">

    <div class="col-md-5">

        <div class="sp-large" style="margin-left: 60px"><img style="height: 250px;border-radius: 10px"
                                                             src="${createLink(controller: "company", action: "loadImage", params: [imgName: company.companyImageName])}"
                                                             class="img-responsive" alt="img">


            <center><h2>60% Funded</h2></center>
            <div class="progress">
                <div class="progress-bar" style="width: 60%;">
                    <span class="sr-only">60% Funded</span>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-7">
        <h1 class="product-title">${company.companyName}</h1>

        <h3 class="product-code">Company Code : ${company.id}</h3>


        <hr>

        <div class="product-price"><span class="price-sales">Profile:${company.user.profile}</span>
        </div>

        <div class="details-description">
            <p>Soon company info column will be added to company profile</p>
        </div>

        <div class="cart-actions">

            <h3><i class="fa fa fa-check-circle-o color-in"><a
                    href="${company.companyWebsite}">${company.companyWebsite}</a>
            </i></h3>


            <h3 class="incaps"><i class="glyphicon glyphicon-lock"></i>good deal to invest</h3>
        </div>


        <div class="">
            <ul class="nav nav-tabs">
                <li class="active">
                    <a href="#details" data-toggle="tab" aria-expanded="true">Details</a>
                    %{--<a href="#details" data-toggle="tab">Details</a></li>--}%
                <li><a href="#investment" data-toggle="tab">Funding</a></li>

            </ul>

            <div class="tab-content">
                <div class="tab-pane active"
                     id="details">
                    <table class="table display-table-cell">

                        <tr>
                            <td>Category:</td><td>${company.companyCategory}</td>
                        </tr>
                        <tr>
                            <td>Address:</td><td>${company.companyAddress}</td>
                        </tr>
                        <tr>
                            <td>OwnerId:</td><td>${company.user.id}</td>
                        </tr>
                        <tr>
                            <td>Number Of Employee:</td><td>${company.companyNumberOfEmployee}</td>
                        </tr>
                        <tr>
                            <td>Market:</td><td>${company.companyMarket}</td>
                        </tr>
                        <tr>
                            <td>Created On:</td><td>${company.dateCreated.dateString}</td>
                        </tr>
                        <br>
                    </table>
                </div>


            </div>

        </div>
    </div>
</div>
</body>
</html>