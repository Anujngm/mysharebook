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

    static belongsTo = [user: User]
    static constraints = {
        company nullable: false
        investor nullable: false
        investmentCategory nullable: false
        investmentStatus nullable: false
        investedNumberOfShare nullable: false
        totalCost nullable: false
        user nullable: false
    }
}
