import com.InvestmentStatus
import com.LoanStatus
import com.Role
import com.User
import com.UserRole
import sharesbook.Company
import sharesbook.Funding
import sharesbook.Investment
import sharesbook.Investor

class BootStrap {

    def init = {
        User userAdmin = new User()
        userAdmin.username = "admin"
        userAdmin.password = "admin"
        userAdmin.save(flush: true)
        Role role1 = new Role(authority: "ADMIN")
        role1.save(flush: true)
        UserRole.create(userAdmin, role1, false)



        def usersname = ['max', 'mad', 'john', 'joe', 'doe']
        def address = ["Noida", "Agra", "Delhi", "Allahabad", "Jaipur"]
        def contact = ["7053854946", "7053854947", "7053854948", "7053854949", "7053854910"]
        def email = ["anuj.rockers007@gmail.com", "anuj@nexthoughts.com", "deshraj@nexthoughts.com", "chirag@nexthoughts.com", "abc@gmail.com"]
        def password = "12345"
        def companyName = ['max pvt ltd', 'mad pvt ltd', 'john pvt ltd', 'joe pvt ltd', 'doe pvt ltd']
        def companyCategory = ["Rich", "Rich", "Rich", "Normal", "High"]

        def companyAddress = ["noida", "noida", "noida", "noida", "noida"]
        def companyWebsite = ["http://www.google.com", "http://www.sony.com", "http://www.honda.com", "http://www.web.com", "http://www.yahoo.com"]
        def companyNumberOfEmployee = [355, 4534, 9534, 1534, 534]
        def companyMarket = ["Noida", "Delhi", "Asia", "Europe", "France"]
        def capitalPerShare = [67, 78, 57, 89, 24]
        def companyImageName = ["1.jpeg", "2.png", "3.jpeg", "4.jpeg", "5.jpeg"]
        def loanTenure = [3, 5, 7, 1, 8]
        def loanTenureMonthOrYear = ["Month", "Year", "Month", "Month", "Year"]
        def repaymentScheme = ["Month", "Year", "Month", "Year", "Month"]
//        def investorDisplayName = ["max investor", "mad investor", "john investor", "joe investor", "doe investor"]
//        def investorListofInterest = ["[Medical, IT]", "[Service]", "[Education, IT]", "[Finance, IT]", "[Service, IT]"]
//        def investorCategory = ["Rich", "Rich", "Normal", "Medium", "Normal"]
//        def investedNumberOfShare = [355, 2734, 334, 156, 1534]
        for (int i = 0; i < 5; i++) {
            if (!User.findByUsername(usersname[i])) {
                User user = new User()
                user.username = usersname[i]
                user.address = address[i]
                user.contact = contact[i]
                user.email = email[i]
                user.password = password
                user.profile = "COMPANY"
                user.save(flush: true)
                println("//////${i}//////" + password + "////////////" + user?.password)
                Role role = Role.findByAuthority(user.profile)
                if (!role) {
                    role = new Role(authority: user.profile)
                    role.save(flush: true)
                }
                UserRole.create(user, role, false)
                Company company = new Company()
                company.user = user
                company.companyName = companyName[i]
                company.companyCategory = companyCategory[i]
                company.companyAddress = companyAddress[i]
                company.companyWebsite = companyWebsite[i]
                company.companyNumberOfEmployee = companyNumberOfEmployee[i]
                company.companyMarket = companyMarket[i]
                company.companyImageName = companyImageName[i]
                company.save(flush: true)



                Funding funding = new Funding()
                funding.amount =200
                funding.loanStatus=LoanStatus.PENDING
                funding.rateOfInterest = 4
                funding.loanTenure = loanTenure[i]
                funding.loanTenureMonthOrYear = loanTenureMonthOrYear[i]
                funding.repaymentScheme = repaymentScheme[i]
                funding.capitalPerShare = capitalPerShare[i]
                funding.company = company
                funding.save(flush: true)
//                Investor investor = new Investor()
//                investor.user = user
//                investor.investorDisplayName = investorDisplayName[i]
//                investor.investorListofInterest = investorListofInterest[i]
//                investor.investorCategory = investorCategory[i]
//                investor.save(flush: true)

            }
        }

//            for (int k = 1; k <= 5; k++) {
//                for (int j = 1; j <= 5; j++) {
//                    if (j == k) {
//                        continue
//                    } else {
//                        if (j % 2 == 0) {
//                            Investment investment = new Investment()
//                            Company company = Company.findById(j)
//                            investment.company = company
//                            Investor investor = Investor.findById(k as long)
//                            investment.investor = investor
//                            investment.investmentCategory = investorCategory[k-1]
//                            investment.investmentStatus = InvestmentStatus.PENDING
//                            investment.investedNumberOfShare = investedNumberOfShare[k-1]
//                            investment.totalCost = investedNumberOfShare[j] * Integer.parseInt(company.companyCapitalPerShare)
//                            investment.user = investor.user
//                            investment.save(flush: true)
//                        }
//                    }
//                }
//            }

//        TODOdata for 5 users, 5 companies, each user must have 1-3 investments


    }
    def destroy = {
    }
}
