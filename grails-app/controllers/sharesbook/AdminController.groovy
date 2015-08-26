package sharesbook

import com.LoanStatus

class AdminController {

    def index() {}

def adminHomePage(){

}
    def showAllFundingApplication(){
        def approvedFund=Funding.findAllByLoanStatus(LoanStatus.APPROVED)

        [funding:Funding.findAll(),approvedFund:approvedFund]
    }


def fundingApplicationStatus(){

println("mad"+params.status)
}

}
