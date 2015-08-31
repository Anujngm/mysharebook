package sharesbook

import com.LoanStatus

class AdminController {

    def index() {}

    def adminHomePage() {

    }

    def showAllFundingApplication() {
        [funding: Funding.findAll()]
    }

    def saveComment(){
//now save commentand render true to ajax call
    }

    def modalCompanyProfile(Company company) {
        [company:company]
    }

    def fundingApplicationStatus() {

        println("mad" + params.status)
    }

}
