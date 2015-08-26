<nav class="navbar navbar-default" style="background: transparent;border: hidden;margin-top: 3px">
    <div class="container">
        <div class="navbar-header">
            <a style="color: black;font-size: 20px;color: white" class="navbar-brand"
               href="#"><strong>SharesBook</strong></a>
        </div>

        <div>
            <ul class="nav navbar-nav">
                <sec:ifLoggedIn>
                    <li role="presentation">
                        <a style="color: black;font-size: 20px;color: white"
                           href="${createLink(controller: "investment", action: "companyListToInvest")}"><strong>Do Investment</strong>
                        </a>
                    </li>
                </sec:ifLoggedIn>

                <sec:ifNotLoggedIn>
                    <li role="presentation">
                        <a style="color: black;font-size: 20px;color: white"
                           href="${createLink(controller: "user", action: "UserSignUp")}"><strong>Sign Up</strong></a>
                    </li>
                </sec:ifNotLoggedIn>
                <sec:ifLoggedIn>
                    <li class="dropdown" role="presentation">
                        <a class="dropdown-toggle" style="color: white;font-size: 20px" data-toggle="dropdown"
                           href="#">Profiles<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <sec:ifLoggedIn>
                                <li role="presentation">
                                    <a style="color: black;font-size: 20px"
                                       href="${createLink(controller: "investment", action: "showMyInvestment")}"><strong>My Investments Profile</strong>
                                    </a>
                                </li>
                            </sec:ifLoggedIn>
                            <sec:ifLoggedIn>
                                <li role="presentation">
                                    <a style="color: black;font-size: 20px"
                                       href="${createLink(controller: "investor", action: "showUserInvestorProfile")}"><strong>Investor Profile</strong>
                                    </a>
                                </li>
                            </sec:ifLoggedIn>
                            <sec:ifLoggedIn>
                                <li role="presentation">
                                    <a style="color: black;font-size: 20px"
                                       href="${createLink(controller: "company", action: "showUserCompanyProfile")}"><strong>Company Profile</strong>
                                    </a>
                                </li>
                            </sec:ifLoggedIn>
                        </ul>
                    </li>
                </sec:ifLoggedIn>
                <sec:ifNotLoggedIn>
                    <li style="margin-left: 790px;" role="presentation">
                        <form method="get" action="${createLink(controller: "login")}">
                            <g:submitButton name="SIGN IN" class="btn btn-default"
                                            value="LOG IN" id="sign_in_btn"
                                            style="color: black;font-size: 15px;margin-top: 5px"/>
                        </form>
                    </li>
                </sec:ifNotLoggedIn>
                <sec:ifLoggedIn>
                    <li style="margin-left: 625px;" role="presentation">
                        <form method="post" action="${createLink(controller: "logout")}">
                            <g:submitButton name="Log Out" class="btn btn-default navbar-btn" value="LOG OUT"
                                            style="color: black;font-size: 15px"
                                            id="log_out_btn"/>
                        </form>
                    </li>
                </sec:ifLoggedIn>
            </ul>
        </div>
    </div>
</nav>
