package sharesbook

import com.User

class Investor {

    String investorDisplayName
    String investorListofInterest
    String investorCategory  //low,medium,high

    static belongsTo = [user: User]
    static constraints = {
    }
}
