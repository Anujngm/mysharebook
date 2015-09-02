package sharesbook

import com.User

class Company {
    String companyName
    String companyCategory
    String companyAddress
    String companyWebsite
    String companyNumberOfEmployee
    String companyMarket
    String companyImageName
    Date dateCreated
    String rejectComment
    String rejectDocument
    static belongsTo = [user: User]
    static hasMany = [loan: Funding]
    static constraints = {
        companyImageName nullable: true
        rejectComment nullable: true,blank: false
        rejectDocument nullable: true
    }
}
