package sharesbook

import com.InvestmentStatus
import com.User
import com.sun.org.apache.bcel.internal.generic.RETURN
import grails.transaction.Transactional

@Transactional
class InvestmentService {

    def serviceMethod() {

    }

    def getImageList(User user) {
        def listOfCompanyIdInvested = []        //list of company's id in which currently logged in user has invested
        def criteria = Investment.createCriteria()
        def list = criteria.list {
            eq('user', user)
            projections {
                property('company')
            }
        }
        if (list) {
            list.eachWithIndex { it, index ->
                listOfCompanyIdInvested.putAt(index, it.getId())
            }
        }
    return listOfCompanyIdInvested
    }


    Investment addDataToInvestment(def params, User user, Company company) {
        Investment investment = new Investment()
        investment.investedNumberOfShare = params.investedNumberOfShare as int
        investment.investor = user.getInvestor()
        investment.investmentCategory = params.investmentCategory
        investment.investmentStatus = InvestmentStatus.PENDING
        investment.totalCost = params.totalCost
        investment.company = company
        investment.user = user
        investment.save()
//    println("inside service end")
        return investment
    }
}
