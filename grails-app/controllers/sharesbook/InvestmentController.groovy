package sharesbook

import com.InvestmentStatus
import com.User
import org.springframework.security.access.annotation.Secured

class InvestmentController {
    @Secured('permitAll')
    def index() {
    }

    @Secured('permitAll')
    def userAlreadyInvested() {
        flash.message = "U will be redirected to edit investement page soon"
        redirect(controller: "user", action: "HomePage")
        return
    }

    @Secured('permitAll')
    def companyListToInvest() {
        //Display list in order to make investment
        User user = springSecurityService.currentUser as User
        if (!user) {
            redirect(controller: "user", action: "HomePage")
            return
        }
        def company = Company.findAll()
        //list of company's id in which currently logged in user has invested
        def listOfCompanyIdInvested = investmentService.getImageList(user)
        render(view: "companyListToInvest", model: [userId: user?.getId(), company: company, listOfCompanyIdInvestedByUser: listOfCompanyIdInvested])
    }

    @Secured('permitAll')
    def showMyInvestment() {
        //Display the currently logged in user's investment
        User user = springSecurityService.currentUser as User
        if (!user) {
            redirect(controller: "user", action: "HomePage")
            return
        }
        def investments = Investment.findAllByUser(user)
        render(view: "showMyInvestment", model: [investments: investments])
    }


    @Secured('permitAll')
    def companyPageToInvest() {
        //Page to invest
        Long id = params.companyId as Long
        Company company = Company.findById(id)
        render(view: "companyPageToInvest", model: [company: company])
    }

    def springSecurityService
    def investmentService
    def postmarkService

    @Secured('permitAll')
    def doInvestment() {
        //make investment
        User user = springSecurityService.currentUser as User
        boolean temp = false                  //to tell ajax that data is saved or not
        if (!user) {
            redirect(controller: "user", action: "HomePage")
            return
        }

        if (params.investmentCategory && params.companyId) {
            Company company = Company.findById(params.companyId as long)
            if (company) {
                Investment investment1 = Investment.findByInvestorAndCompany(user.investor, company, null)
                //checking if currently logged in user has already invested in the choosed company or not
                //then control must be redirected to edit profile page
                if (investment1) {
                    temp = false
                    flash.message = "U have already invested in this company"
                    redirect(controller: "investment", action: "showMyInvestment")
                    return
                } else {
                    Investment investment = investmentService.addDataToInvestment(params, user, company)
                    if (investment.validate()) {
                        //send email to company and user both
                        def myLink = g.createLink(controller: "user", action: "HomePage", absolute: true)
                        postmarkService.sendPostmarkMail("anuj@nexthoughts.com", company.user.email, "Investement in your company", "Invetement", "'${user.username}' has invested in your company '${company.companyName}'<a href='${myLink}'>Click here to login and access your company status</a>", null, null)
                        postmarkService.sendPostmarkMail("anuj@nexthoughts.com", user.email, "Bidding Notification", "You have invested in a company", "You have invested in a company.<br>Company Name:'${company.companyName}'<br><a href='${myLink}'>Click here to login and check.</a>", null, null)
                        temp = true
                    } else {
                        println(investment.errors.allErrors)
                    }
                }
            }
            println("going outside")
            render temp

        } else {
            if (!Investor.findByUser(user)) {
                flash.message = "Please create an investor profile before doing any investement."
                redirect(controller: "investor", action: "createInvestorProfile")
                return
            } else {
                render(view: "InvestmentInfoPage", model: [companyId: params.companyId, perShareValue: params.companyShares])
            }
        }
    }
}