package sharesbook

import com.Role
import com.User
import com.UserRole
import org.springframework.security.access.annotation.Secured

class InvestorController {
    @Secured('permitAll')
    def index() {}



    def springSecurityService

    @Secured('permitAll')
    def showUserInvestorProfile() {
        //Display investor profile
        User user = springSecurityService.currentUser as User
        if (!user) {
            flash.message = "Cannot resolve logged in user session"
            redirect(controller: "user", action: "HomePage")
            return
        }
        Investor investor = Investor.findByUser(user)
        if (!investor) {
            redirect(controller: "investor", action: "createInvestorProfile")
            return
        } else {
            render(view: "showUserInvestorProfile", model: [investor: investor])
        }
    }

    @Secured('permitAll')
    def saveNewUserProfile() {
        User user = springSecurityService.currentUser as User
        Role role = Role.findByAuthority("INVESTOR")
        if (!role) {
            role = new Role(authority: "INVESTOR")
            role.save(flush: true)
        }
        UserRole.create(user, role, false)
        user.isProfileSelected = true
        user.save(flush: true)
        redirect(controller: "user", action: "HomePage")
        return
    }


    def investorService

    @Secured('permitAll')
    def createInvestorProfile() {

        //Create investor profile
        User user = springSecurityService.currentUser as User
        if (!user) {
            flash.message = "Cannot resolve logged in user session"
            redirect(controller: "user", action: "HomePage")
            return
        }
        if (params.investorDisplayName) {

            investorService.saveInvestorInfo(params, user)
            redirect(uri: "/user/HomePage")
            return
        } else {
            if (Investor.findByUser(user)) {
                flash.message = "You are already registed"
                redirect(uri: "/user/HomePage")
                return
            } else {
                render(view: 'createInvestorProfile')
            }
        }
    }
}
