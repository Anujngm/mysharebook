package sharesbook

import com.InvestmentStatus
import com.User

class Investment {
    Company company
    Investor investor
    String investmentCategory
    InvestmentStatus investmentStatus
    int investedNumberOfShare
    String totalCost
    String rejectComment
    String rejectDocument

    static belongsTo = [user: User]

    static constraints = {
        company nullable: false
        investor nullable: false
        investmentCategory nullable: false
        investmentStatus nullable: false
        investedNumberOfShare nullable: false
        totalCost nullable: false
        user nullable: false
        rejectComment nullable: true, blank: false
        rejectDocument nullable: true
    }
}
