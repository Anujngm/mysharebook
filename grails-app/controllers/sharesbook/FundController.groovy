package sharesbook

import com.LoanStatus
import com.User

class FundController {
    def springSecurityService

    def index() {}

    def createFundingProfile() {
        User user = springSecurityService.currentUser as User
        if (!user) {
            flash.message = "Can not resolve logged in user session"
            redirect(controller: "user", action: "HomePage")
            return
        }
        Company company = Company.findByUser(user)
        if (!company) {
            flash.message = "Please create Company profile before raising fund."
            redirect(controller: "company", action: "createCompanyProfile")
            return
        }
        if (params.amount) {
            Funding fund = new Funding(params)
            fund.loanStatus = LoanStatus.PENDING
            fund.company = company
            if (fund.validate()) {
                fund.save(flush: true)
            } else {
                println(fund.errors.allErrors)
            }
            redirect(controller: "company", action: "showUserCompanyProfile")
            return
        } else {
            Funding funding=Funding.findByCompany(company)
            if (funding) {
               render(view: "showFundingProfile", model:[funding:funding])
            } else {
                render(view: "raiseFund")
            }
        }

    }
def fundingApplicationStatus(Long id,String status){
    Funding fund=Funding.findById(id)
    fund.loanStatus=status?LoanStatus."${status}":null
    fund.save(flush: true)
    render "${id}"
}

def showFundingProfile(){
}
}
