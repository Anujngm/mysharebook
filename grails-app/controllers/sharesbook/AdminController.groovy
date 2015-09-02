package sharesbook

import com.LoanStatus
import com.User

class AdminController {

    def index() {}

    def adminHomePage() {

    }

    def showInvestorUserProfile() {
        User user = User.findById(params.id)
        [user: user]
    }

    def showInvestorInvestmentProfile(User user) {
        def investmentList = Investment.findAllByUser(user)
       render (view: "/investment/showMyInvestment",model: [investments:investmentList])
    }

    def showAllInvestor() {
        def investorList = Investor.findAll()
        [investorList: investorList]
    }

    def showAllFundingApplication() {
        [funding: Funding.findAll()]
    }

    def saveComment(Long id, String comment) {
//now save commentand render true to ajax call
        boolean temp;
        println("hhhhh========" + id + "" + comment)
        Company company = Company.findById(id)
        company.rejectComment = comment
        if (company.validate()) {
            company.save(flush: true)
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
