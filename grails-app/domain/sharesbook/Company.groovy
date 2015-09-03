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

    static belongsTo = [user: User]
    static hasMany = [loan: Funding]
    static constraints = {
        companyImageName nullable: true

    }
}
