package sharesbook

import com.LoanStatus
import com.User

class AdminController {

    def index() {}

    def adminHomePage() {

    }

    def showAllInvestmentApplication() {

    }

    def showInvestorUserProfile() {
        User user = User.findById(params.id)
        [user: user]
    }

    def showInvestorInvestmentProfile(User user) {
        def investmentList = Investment.findAllByUser(user)
        render(view: "/investment/showMyInvestment", model: [investments: investmentList])
    }

    def showAllInvestor() {
        def investorList = Investor.findAll()
        [investorList: investorList]
    }

    def showAllFundingApplication() {
        [funding: Funding.findAll()]
    }

    def saveInvestmentRejectionComment(Long id,String comment) {
        boolean temp;
        Investment investment=Investment.findById(id)
        investment.rejectComment = comment
        if (investment.validate()) {
            investment.save(flush: true)
            temp = true
        } else {
            temp = false
        }
        render "${temp}"
    }

    def saveComment(Long id, String comment) {
        //now save commentand render true to ajax call
        boolean temp;
        println("hhhhh========" + id + "" + comment)
Funding funding=Funding.findById(id)
        funding.rejectComment = comment
        if (funding.validate()) {
            funding.save(flush: true)
            temp = true
        } else {
            temp = false
        }
        render "${temp}"
    }

    def modalCompanyProfile(Company company) {
        [company: company]
    }

    def fundingApplicationStatus() {

        println("mad" + params.status)
    }

}
