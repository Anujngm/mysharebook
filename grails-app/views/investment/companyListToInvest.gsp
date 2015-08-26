<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Investment Page</title>
    <meta name="layout" content="themeAll"/>
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css', file: 'jquery.dataTables.min.css')}" rel="stylesheet">
    <script src="${resource(dir: 'js', file: 'jquery-1.11.3.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jquery.dataTables.min.js')}"></script>
</head>

<body>
<br><br>
%{--<div class="col-md-12">--}%
%{--<div class="table" style="margin-left: 20px">--}%
<h1 style="text-align: center"><strong>Company Details</strong></h1>
%{--<table id="table_article" style="width: 90%;margin-left: inherit" class="table-bordered">--}%
%{--<thead>--}%
%{--<tr>--}%
%{--<th class="dt-head-left">Company Name</th>--}%
%{--<th class="dt-head-left">Company Category</th>--}%
%{--<th class="dt-head-left">Company Market</th>--}%
%{--<th class="dt-head-left">Company Website</th>--}%
%{--<th class="dt-head-left">Action</th>--}%
%{--<th class="dt-head-left">Invested</th>--}%
%{--</tr>--}%
%{--</thead>--}%
%{--<tbody class="td-body-center">--}%
%{--<div id="listCompany">--}%
%{--<g:each in="${company}" var="currentCompany">--}%
%{--<tr id="company_${currentCompany?.id}">--}%
%{--<td id="td1" class="dt-body-left">${currentCompany.companyName}</td>--}%
%{--<td id="td2" class="dt-body-left">${currentCompany.companyCategory}</td>--}%
%{--<td id="td3" class="dt-body-left">${currentCompany.companyMarket}</td>--}%
%{--<td id="td4" class="dt-body-left"><a--}%
%{--href="${currentCompany.companyWebsite}">${currentCompany.companyWebsite}</a>--}%
%{--</td>--}%
%{--<td class="dt-body-center">--}%
%{--<g:if test="${currentCompany.userId == userId}">--}%
%{--<strong style="text-decoration: none">Owner</strong>--}%
%{--</g:if>--}%
%{--<g:else>--}%
%{--<a href="${createLink(controller: "investment", action: "companyPageToInvest", params: [companyId: currentCompany.id])}">Full Profile</a>--}%
%{--</g:else>--}%
%{--</td>--}%
%{--<td id="td5" class="dt-body-center">--}%
%{--<g:if test="${currentCompany.id in listOfCompanyIdInvestedByUser}">--}%
%{--<span class="glyphicon glyphicon-ok" style="color:green" aria-hidden="true"></span>--}%

%{--</g:if>--}%
%{--<g:else>--}%
%{--<span class="glyphicon glyphicon-remove" style="color: red" aria-hidden="true"></span>--}%
%{--</g:else>--}%
%{--<g:each in="${listOfCompanyIdInvestedByUser}" var="list">--}%
%{--<g:if test="${currentCompany.id in list}">--}%
%{--<span class="glyphicon glyphicon-ok" style="color:green" aria-hidden="true"></span>--}%
%{----}%
%{--</g:if>--}%
%{--<g:else>--}%
%{--<span class="glyphicon glyphicon-remove" style="color: red" aria-hidden="true"></span>--}%
%{--</g:else>--}%
%{--</g:each>--}%
%{--</td>--}%
%{--</tr>--}%
%{--</g:each>--}%
%{--</div>--}%
%{--</tbody>--}%
%{--</table>--}%
%{--</div>--}%
%{--</div>--}%

<div class="col-lg-12 col-md-12 col-sm-12">

    <div class="w100 productFilter clearfix">
        <p class="pull-left">Showing <strong>12</strong> products</p>

        <div class="pull-right ">
            <div class="change-view pull-right">
                <a href="#" title="Grid" class="grid-view"><i class="fa fa-th-large"></i></a>
                <a href="#" title="List" class="list-view "><i class="fa fa-th-list"></i></a></div>
        </div>
    </div>
    <g class="row  categoryProduct xsResponse clearfix">
        <g:each in="${company}" var="currentCompany">
            <div class="item col-sm-4 col-lg-4 col-md-4 col-xs-6" style="height: 470px;">
                <div class="product" style="height: auto">
                    <div class="image">
                        <g:if test="${currentCompany.userId == userId}">
                            <img class="img-responsive" alt="img"
                                 src="${createLink(controller: "company", action: "loadImage", params: [imgName: currentCompany.companyImageName])}">
                        </g:if>
                        <g:else>
                            <a href="${createLink(controller: "investment", action: "companyPageToInvest", params: [companyId: currentCompany.id])}">
                                <img class="img-responsive" alt="img"
                                     src="${createLink(controller: "company", action: "loadImage", params: [imgName: currentCompany.companyImageName])}">
                            </a>
                        </g:else>




                        <div class="promotion"><span class="new-product">NEW</span> <span
                                class="discount">15% OFF</span></div>
                    </div>

                    <div class="description">
                        <h4><a href="#">${currentCompany.companyName}</a></h4>

                        <div class="grid-description">
                            <p>
                                Category:${currentCompany.companyCategory}<br>
                                Market:${currentCompany.companyMarket}<br>
                                Website:<a
                                    href="${currentCompany.companyWebsite}">${currentCompany.companyWebsite}</a>
                            </p>
                        </div>

                        <div class="list-description">
                            <p>Description about company..Soon field will be add to database.</p>
                        </div>
                        <span class="size">
                            <g:if test="${currentCompany.id in listOfCompanyIdInvestedByUser}">
                                <span style="color:green" aria-hidden="true">Invested</span>

                            </g:if>
                            <g:else>
                                <strong><span style="color: red" aria-hidden="true">Not Invested</span></strong>
                            </g:else>
                        </span></div>

                    %{--<div class="price"><span>${currentCompany.user.profile}</span></div>--}%

                    <div class="action-control">
                        <g:if test="${currentCompany.userId == userId}">
                            <strong style="color: green">Owner</strong>
                        </g:if>
                        <g:else>
                            <a class="btn btn-primary"
                               href="${createLink(controller: "investment", action: "companyPageToInvest", params: [companyId: currentCompany.id])}">Invest Now</a>
                        </g:else>
                    </div>
                </div>
            </div>
        </g:each>

</div>

<div class="w100 categoryFooter">
    <div class="pagination pull-left no-margin-top">
        <ul class="pagination no-margin-top">
            <li><a href="#">«</a></li>
            <li class="active"><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li><a href="#">»</a></li>
        </ul>
    </div>

    <div class="pull-right pull-right  col-sm-4 col-xs-12 no-padding text-right text-left-xs">
        <p>Showing 1–450 of 12 results</p>
    </div>
</div>
</div>


















<g:if test="${flash.message}">
    <div class="message" style="display: block"><script>
        alert("${flash.message}")
    </script></div>
</g:if>

<script>
    $("#table_article").DataTable({
        paging: true,
        "searching": false,
        "lengthMenu": [5, 7, 10],
        "pagingType": "full_numbers",
        "caption": "margin"
    });
</script>

</body>
</html>