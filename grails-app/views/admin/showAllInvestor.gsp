<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>All Investor Profile</title>
    <meta name="layout" content="headerFooter"/>
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <script src="${resource(dir: 'js', file: 'jquery-1.11.3.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jquery.validate.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'sweetalert.min.js')}"></script>
    <link href="${resource(dir: 'css', file: 'sweetalert.css')}" rel="stylesheet">
</head>

<body>
<div class="col-md-2"></div>

<div class="col-md-8" style="text-align: center">
    <center><h1>All Investor Profile</h1></center>
    <g:if test="${investorList.empty}">
        <h2>NO INVESTOR PROFILE CREATED YET!!!</h2>

    </g:if>
    <g:else>
        <table class="table table-bordered" id="table_funds_pending">
            <tbody>
            <thead>
            <tr>
                <th class="dt-head-left">Investor Display Name&nbsp;&nbsp;</th>
                <th class="dt-head-left ">Interest&nbsp;&nbsp;</th>
                <th class="dt-head-left">Category&nbsp;&nbsp;</th>
                <th class="dt-head-left">User Profile&nbsp;&nbsp;</th>
                <th class="dt-head-left">Investments&nbsp;&nbsp;</th>
            </tr>
            </thead>
            <tbody class="td-body-center">
            <g:each in="${investorList}" var="investor">
                <g:render template="investorTable" model="[investor: investor]"/>
            </g:each>
            </tbody>
        </table>

    </g:else>
</div>

<div class="col-md-2"></div>

</body>
</html>