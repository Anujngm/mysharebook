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
    String rejectComment
    String rejectDocument

    static hasOne = [company: Company]

    static constraints = {
        rejectComment nullable: true,blank: false
        rejectDocument nullable: true
    }
}
