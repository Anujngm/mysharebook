<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">SharesBook</a>
        </div>

        <div>

            <ul class="nav navbar-nav">
                <li class="active" role="presentation"><a href="${createLink(controller: "admin",action: "adminHomePage")}">Home</a></li>
            <li role="presentation">
                <sec:ifLoggedIn>
                    <a href="${createLink(controller: "admin", action: "showAllFundingApplication")}">Funding Applications</a>
                </sec:ifLoggedIn>
            </li>
                <li role="presentation">
                    <sec:ifLoggedIn>
                        <a href="${createLink(controller: "admin", action: "showAllInvestor")}">Investors Profile</a>
                    </sec:ifLoggedIn>
                </li>
                <li role="presentation">
                    <sec:ifLoggedIn>
                        <a href="${createLink(controller: "admin", action: "showAllInvestmentApplication")}">Investment Application</a>
                    </sec:ifLoggedIn>
                </li>
                <li role="presentation">
                    <sec:ifLoggedIn>
                        %{--<a href="${createLink(controller: "investment", action: "showMyInvestment")}">My Investments</a>--}%
                    </sec:ifLoggedIn>
                </li>
                <li class="dropdown" role="presentation">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Menu 1 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Submenu 1-1</a></li>
                        <li><a href="#">Submenu 1-2</a></li>
                        <li><a href="#">Submenu 1-3</a></li>

                    </ul>
                </li>
                <li style="margin-left: 300px;" role="presentation">
                    <sec:ifLoggedIn>
                        <form method="post" action="${createLink(controller: "logout")}">
                            <g:submitButton name="Log Out" class="btn btn-default navbar-btn" value="LOG OUT"
                                            id="log_out_btn"/>
                        </form>
                    </sec:ifLoggedIn>
                </li>

            </ul>

        </div>
    </div>
</nav>
