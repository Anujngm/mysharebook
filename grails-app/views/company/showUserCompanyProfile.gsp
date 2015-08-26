<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Company Profile</title>
    <meta name="layout" content="themeAll"/>
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <script src="${resource(dir: 'js', file: 'jquery-1.11.3.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
</head>

<body>
<br><br><br>
%{--<h1 style="text-align: center"><strong>Company Profile:${company.companyName}</strong></h1>--}%


<div class="modal investor fade" id="ModalInvestor" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

                <h3 class="modal-title-site text-center">Investor</h3>
            </div>

            <div class="modal-body">
            </div>
Name:<label id="name-label"></label>

            <div class="modal-footer">
               </div>
        </div>
    </div>
</div>

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

                <div class="tab-pane" id="investment">
                    <g:if test="${listOfInvestment == null}">
                        <h3 class="incaps"><i class="glyphicon glyphicon-lock"></i>Yet No Funding</h3>
                    </g:if>
                    <g:else>
                        <table id="table_article" style="width: 90%;margin-left: inherit"
                               class="table display-table-cell">
                            <thead>
                            <tr>
                                <th class="dt-head-left">Investor</th>
                                <th class="dt-head-left">Shares</th>
                                <th class="dt-head-left">Total cost</th>
                                <th class="dt-head-left">Status</th>
                                <th class="dt-head-left">Action</th>
                            </tr>
                            </thead>
                            <tbody class="td-body-center">
                            <g:each in="${listOfInvestment}" var="investment" status="i">
                                <tr id="company_${investment?.id}">
                                    <td id="td1" class="dt-body-left">${investment.user.username}</td>
                                    <td id="td2" class="dt-body-left">${investment.investedNumberOfShare}</td>
                                    <td id="td3" class="dt-body-left">$${investment.totalCost}</td>
                                    <td id="td4" class="dt-body-left">${investment.investmentStatus}</td>
                                    <td id="td5" class="dt-body-left"><input type="button" style="text-decoration: none;background: transparent;border: transparent" onclick="investorModal('${i}')" value="Investor Profile">
                                    %{--<a href=""  data-toggle="modal" data-target="#ModalInvestor">Investor profile</a>--}%
                                    </td>
                                </tr>
                            </g:each>
                            </tbody>
                        </table>
                    </g:else>
                </div>

            </div>

        </div>
    </div>
</div>
<script>
function investorModal(i){
    alert(i)
%{--$('#dialog-name-label').val("${listOfInvestment[i].investor.investorDisplayName}")--}%
    $('#name-label').html("${listOfInvestment}")
    $('#ModalInvestor').modal('show')
//        $('#my_modal').on('show.bs.modal', function(e) {
//
//            //get data-id attribute of the clicked element
////            var bookId = $(e.relatedTarget).data('book-id');
////$("#book-id").val("hello")
////            populate the textbox
//            $(e.currentTarget).find('input[name="bookId"]').val(bookId);
//        });

}
</script>
</body>
</html>