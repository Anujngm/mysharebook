package sharesbook

import com.User
import grails.transaction.Transactional

@Transactional
class InvestorService {

    def serviceMethod() {

    }

    def saveInvestorInfo(def params, User user) {
        Investor investor = new Investor(params)
        investor.user = user
        investor.investorListofInterest = params.interest.toString()
        investor.save(flush: true)
    }
}
