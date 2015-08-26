<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Home Page</title>
    <meta name="layout" content="theme"/>
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <script src="${resource(dir: 'js', file: 'jquery-1.11.3.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jquery.sticky.js')}"></script>
    <script src="${resource(dir: 'js', file: 'wodry.min.js')}"></script>
    <link href="${resource(dir: 'css', file: 'wodry.css')}" rel="stylesheet">
    <script src="${resource(dir: 'js', file: 'sweetalert.min.js')}"></script>
    <link href="${resource(dir: 'css', file: 'sweetalert.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css', file: 'font-awesome.min.css')}" rel="stylesheet">
    <script>
        $(document).ready(function () {
            $("#createProfile").sticky({topSpacing: 4});
        });
    </script>

</head>


<body style="color: black">

%{--<div aria-orientation="horizontal"--}%
     %{--style="background-image:url('${resource(dir: "images", file: "coins-money.jpg")}');width: auto;height:100%">--}%
%{--</div>--}%
%{--<div class="row col-sm-12" style="margin-top: 1%;text-align: center">--}%
    %{--<div class="col-sm-8">--}%
        %{--<sec:ifNotLoggedIn>--}%
            %{--<form method="get" action="${createLink(controller: "user", action: "UserSignUp")}">--}%
                %{--<g:submitButton name="SIGN Up" class="btn btn-primary" value="SIGN Up" id="sign_up_btn"/>--}%
            %{--</form>--}%
        %{--</sec:ifNotLoggedIn>--}%
        %{--<sec:ifLoggedIn>--}%
            %{--<form method="get" action="${createLink(controller: "investment", action: "companyListToInvest")}">--}%
                %{--<g:submitButton name="investment" style="margin-top: auto" class="btn btn-primary" value="Do Investment"--}%
                                %{--id="investment"/>--}%
            %{--</form>--}%
        %{--</sec:ifLoggedIn>--}%
    %{--</div>--}%

    %{--<div class="col-sm-4">--}%
        %{--<div class="col-sm-6">--}%
            %{--<sec:ifNotLoggedIn>--}%
                %{--<form method="get" action="${createLink(controller: "login")}">--}%
                    %{--<g:submitButton name="SIGN IN" class="btn btn-primary" style="background-color: green;color: white"--}%
                                    %{--value="LOG IN" id="sign_in_btn"/>--}%
                %{--</form>--}%
            %{--</sec:ifNotLoggedIn>--}%
            %{--<sec:ifLoggedIn>--}%
                %{--<form method="post" action="${createLink(controller: "logout")}">--}%
                    %{--<g:submitButton name="Log Out" class="btn btn-primary" value="LOG OUT" id="log_out_btn"/>--}%
                %{--</form>--}%
            %{--</sec:ifLoggedIn>--}%
        %{--</div>--}%


        %{--<div class="col-sm-6">--}%

        %{--</div>--}%
    %{--</div>--}%

%{--</div>--}%

<div aria-orientation="horizontal"
     style="background-image:url('${resource(dir: "images", file: "coins-money.jpg")}');width: auto;height:100%">
   <div class="row col-sm-12" style="text-align: center">
    <p style="font-family: 'Menlo';font-size: 40px;margin-bottom:0px;background-color: transparent;"><br><br>We care your <b style="color:darkkhaki">INVESTMENTS</b>
        <br>

    <div><b><span style="color: black;font-size: 35px;font-family: Menlo" class="wodry">SharesBook...|SharesBook...</span>
    </b></div></p>
</div>

<div class="col-sm-12">
    <div class="col-sm-4"></div>

    <div class="col-sm-4">
        <sec:ifLoggedIn>

            <button type="button" class="btn btn-primary btn-lg"
                    style="z-index:999;border-radius: 7px;margin-left: 22px;width: auto"
                    id="createProfile" data-toggle="modal" data-target="#myModal">
                Create Company or Investor profile
            </button>
            <!-- Modal -->
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                    aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel">Company Or Investor?</h4>
                        </div>

                        <div class="modal-body">
                            <div class="col-md-12">
                                <a href="${createLink(controller: "company", action: "createCompanyProfile")}"><img
                                        style="width: 260px;height: 180px"
                                        src="${resource(dir: 'images', file: 'company.jpg')}"></a>

                                <a href="${createLink(controller: "investor", action: "createInvestorProfile")}"><img
                                        style="width: 260px;height: 180px"
                                        src="${resource(dir: 'images', file: 'investor.jpg')}"></a>
                            </div>
                        </div>

                        <div class="modal-footer" style="border: hidden">
                        </div>
                    </div>
                </div>
            </div>

        </sec:ifLoggedIn>
    </div>

    <div class="col-sm-4"></div>
</div>

</div>

<div class="lead" style="margin: 5%">
    <h2 class="h1" style="text-align: center;font-family: 'Courier New'">Equity crowdfunding done properly</h2>

    <p style="font-family: Menlo;text-align: center">
        Support before, during and after fundraising ensures that businesses have the best opportunity for success
        and that their investors are part of it. It's at the heart of everything&nbsp;we&nbsp;do.
    </p>
</div>

<div class="col-md-12">
    <div class="row">
        <div class="col-md-4">
            <div>
                image
            </div>
            <strong>Deep investor network</strong>

            <p style="text-align: left">
                Angel investors and venture capitalists invest alongside friends, family and tribes of&nbsp;supporters.
            </p>
        </div>

        <div class="col-md-4">
            <div>
                image
            </div>
            <strong>Ambitious businesses</strong>

            <p style="text-align: left">
                From idea-stage startups to publicly-traded companies, there are plenty of businesses to buy&nbsp;into.
            </p>
        </div>

        <div class="col-md-4">
            <div>
                image
            </div>
            <strong>Real investment</strong>

            <p style="text-align: left">
                Anyone can invest as much as they like into businesses they choose in exchange for full
                voting&nbsp;shares.
            </p>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4">
            <div>
                image
            </div>
            <strong>Investor protection</strong>

            <p style="text-align: left">
                Receive professional-grade protections through our unified nominee structure - so you can share
                in&nbsp;success.
            </p>
        </div>

        <div class="col-md-4">
            <div>
                image
            </div>
            <strong>Full-service</strong>

            <p style="text-align: left">
                We're not just introducers. Our team handles all documentation, admin and payment for both investors
                and&nbsp;businesses.
            </p>
        </div>

        <div class="col-md-4">
            <div>
                image
            </div>
            <strong>Ongoing investor relations</strong>

            <p style="text-align: left">
                Investors and businesses can easily keep-in-touch, online and off, throughout the
                investment lifecycle.
            </p>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4">
            <div>
                image
            </div>
            <strong>Cross border</strong>

            <p style="text-align: left">
                Our community is truly global, with active investors and entrepreneurs from 48&nbsp;countries.
            </p>
        </div>

        <div class="col-md-4">
            <div>
                image
            </div>
            <strong>Multi-currency</strong>

            <p style="text-align: left">
                Easily deposit, invest and raise investment in your local or preferred&nbsp;currency.
            </p>
        </div>

        <div class="col-md-4">
            <div>
                image
            </div>
            <strong>Secure</strong>

            <p style="text-align: left">
                We are authorised to hold and transfer funds in secure, dedicated client money&nbsp;accounts.
            </p>
        </div>
    </div>
</div>


<div class="col-md-12">
    <div class="col-md-2"></div>

    <div class="col-md-8" style="margin-left: 180px;width: 500px;height: 500px">
        <div id="myCarousel" style="width: 500px;height: 500px" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators" style="text-align:center">
                <li data-target="#myCarousel" data-slide-to="0" style="background-color: black;border-color: grey"
                    class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1" style="background-color: black;border-color: grey"></li>
                <li data-target="#myCarousel" data-slide-to="2" style="background-color: black;border-color: grey"></li>
                <li data-target="#myCarousel" data-slide-to="3" style="background-color: black;border-color: grey"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active" style="width: 500px;height: 500px">
                    %{--<img src="${createLink(controller: "company", action: "loadImage", params: [imgName: imageList[0]])}"--}%
                         %{--alt="Company1" style="border: hidden;width: 500px;height: 500px;border-radius: 10px"--}%
                         %{--class="img-thumbnail">--}%
                </div>

                <div class="item" style="width: 500px;height: 500px;margin-top: 0px">
                    %{--<img src="${createLink(controller: "company", action: "loadImage", params: [imgName: imageList[1]])}"--}%
                         %{--alt="Company2" style="border: hidden;width: 500px;height: 500px;border-radius: 10px"--}%
                         %{--class="img-thumbnail">--}%
                </div>

                <div class="item" style="width: 500px;height: 500px">
                    %{--<img src="${createLink(controller: "company", action: "loadImage", params: [imgName: imageList[2]])}"--}%
                         %{--alt="Company3" style="border: hidden;width: 500px;height: 500px;border-radius: 10px"--}%
                         %{--class="img-thumbnail">--}%
                </div>

                <div class="item" style="width: 500px;height: 500px">
                    %{--<img src="${createLink(controller: "company", action: "loa  dImage", params: [imgName: imageList[3]])}"--}%
                         %{--alt="Company4" style="border: hidden;width: 500px;height: 500px;border-radius: 10px"--}%
                         %{--class="img-thumbnail">--}%
                </div>
            </div>

            <!-- Left and right controls -->
            %{--<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">--}%
            %{--<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>--}%
            %{--<span class="sr-only">Previous</span>--}%
            %{--</a>--}%
            %{--<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">--}%
            %{--<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>--}%
            %{--<span class="sr-only">Next</span>--}%
            %{--</a>--}%
        </div>
    </div>

    <div class="col-md-2"></div>
    %{--<g:each in="${imageList}" var="imageListToDisplay" status="counter">--}%
    %{--<img src="${createLink(controller: "company", action: "loadImage", params: [imgName: imageListToDisplay])}"--}%
    %{--width="260px" height="260px" style="margin: 20px" alt="..." class="img-circle">--}%
    %{--</g:each>--}%


    %{--<table id="table_image">--}%
    %{--<tbody>--}%
    %{--<div class="col-md-2"></div>--}%

    %{--<g:each in="${imageList}" var="imageListToDisplay" status="counter">--}%
    %{--<g:if test="${counter == 4 || counter == 7 || counter == 10}">--}%
    %{--<tr id="tr1_image">--}%
    %{--<td id="td1_image1" + ${counter}>--}%
    %{--<img src="${createLink(controller: "company", action: "loadImage", params: [imgName: imageListToDisplay])}"--}%
    %{--width="260px" height="260px" style="margin: 10px" alt="..." class="img-circle">--}%
    %{--</tr>--}%
    %{--</g:if>--}%
    %{--<g:else>--}%
    %{--<td id="td1_image2"+${counter}>--}%
    %{--<img src="${createLink(controller: "company", action: "loadImage", params: [imgName: imageListToDisplay])}"--}%
    %{--width="260px" height="260px" style="margin: 10px" alt="..." class="img-circle">--}%
    %{--</g:else>--}%
    %{--</td>--}%
    %{--</g:each>--}%

    %{--<div class="col-md-2"></div>--}%
    %{--</tbody>--}%
    %{--</table>--}%

</div>
<g:if test="${flash.message}">
    <div style="width: 100px;height: 50px">
        <script>
            sweetAlert("${flash.message}");
        </script>
    </div>
</g:if>


<script>
    //    alert("hi")
    $('.wodry').wodry({
        animation: 'rotateX',
        delay: 1000,
        animationDuration: 800
    });
</script>
%{--<script>--}%
%{--function loadCompanyImages(){--}%
%{--alert("hi")--}%
%{--$.ajax({--}%
%{--url: "${createLink(controller:'user',action:'loadAllImages')}",--}%
%{--dataType: 'json',--}%
%{--data: {--}%
%{--},--}%
%{--success: function (imageList) {--}%
%{--alert("//////"+imageList)--}%
%{--// window.location.href = "../user/HomePage.gsp"--}%
%{--//   $("#article_"+id).hide();--}%
%{--//  $("#article_"+id+" td:nth-child(3)").text("max");--}%
%{--},--}%
%{--error: function (request, status, error) {--}%
%{--alert(request)--}%
%{--}--}%
%{--});--}%
%{--alert("bye")--}%
%{--}--}%

%{--</script>--}%

</body>
</html>