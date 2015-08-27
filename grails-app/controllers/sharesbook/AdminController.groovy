package sharesbook

import com.LoanStatus

class AdminController {

    def index() {}

def adminHomePage(){

}
    def showAllFundingApplication(){
//        def approvedFund=Funding.findAllByLoanStatus(LoanStatus.APPROVED)

        [funding:Funding.findAll()]
    }


def fundingApplicationStatus(){

println("mad"+params.status)
}

}
