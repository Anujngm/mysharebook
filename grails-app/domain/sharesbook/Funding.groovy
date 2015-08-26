package sharesbook

import com.LoanStatus

class Funding {

    Long amount
    LoanStatus loanStatus
    Long rateOfInterest
    int loanTenure
    String loanTenureMonthOrYear
    String repaymentScheme
    Long capitalPerShare
    Date dateCreated
    Date lastUpdated

    static hasOne = [company: Company]

    static constraints = {
    }
}
