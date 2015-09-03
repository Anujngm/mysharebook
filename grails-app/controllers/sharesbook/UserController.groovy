package sharesbook

import com.Role
import com.User
import com.UserRole
import grails.plugin.springsecurity.annotation.Secured
import grails.plugins.postmark.PostmarkService

@Secured('permitAll')
class UserController {
    @Secured('permitAll')
    def index() {
        println("index")
        redirect(controller: "user", action: "HomePage")
        return
    }

    def springSecurityService

    @Secured('permitAll')
    def resetPassword() {
        if (params.tokenId && params.password) {
            User user = User.findByTokenToResetPassword(params.tokenId.toString())
            if (!user) {
                flash.message = "Sorry!!! Link Expired"
                redirect(controller: "user", action: "HomePage")
                return
            }
            if (userService.resetPassword(user, params.password)) {
                flash.message = "Password Changed"
                redirect(controller: "user", action: "HomePage")
                return
            } else {
                flash.message = "Sorry!!! Link Expired"
                redirect(controller: "user", action: "HomePage")
                return
            }
        } else {
            render(view: "resetPassword")
        }
    }


    def postmarkService

    @Secured('permitAll')
    def forgetPassword() {
        if (params.email) {
            User user = User.findByEmailAndUsername(params.email, params.username)
            if (!user) {
                flash.message = "Email address not found in database"
                redirect(controller: "user", action: "forgetPassword")
                return
            } else if (!user.isTokenValid) {
                String token = UUID.randomUUID()
                def myLink = g.createLink(controller: "user", action: "resetPassword", params: [tokenId: token], absolute: true)
                userService.forgetPassword(user, params.email, myLink, token)
                flash.message = "Access your email account to reset your password"
                redirect(controller: "user", action: "HomePage")
                return
            } else if (user.isTokenValid) {
                flash.message = "Link is already sended to u...Kindly check your email."
                redirect(controller: "user", action: "forgetPassword")
                return
            }
        } else {
            render(view: "forgetPassword")
        }
    }

    @Secured('permitAll')
    def HomePage() {
        User user = springSecurityService.currentUser as User
        if (user) {
            Role role = new Role(authority: "ADMIN")
            println(user.getAuthorities().authority[0])
            if (user.getAuthorities().authority[0] == "ADMIN") {
                println("admin inside")
                redirect(controller: "admin", action: "adminHomePage")
                return
            } else {
                println("admin else inside")
                render(view: "HomePage", model: [imageList: loadAllImages()])
            }

        } else {
            println("user inside")
            [imageList: loadAllImages()]
        }
    }
    def userService

    @Secured('permitAll')
    def UserSignUp() {
        println params
        if (params.username) {
            User user = new User(params)
            userService.saveUserInfo(user)
            flash.clear()
            redirect(controller: "user", action: "HomePage")
            return
        } else {
            render(view: "UserSignUp")
        }
    }

    @Secured('permitAll')
    def loadAllImages() {
        def criteria = Company.createCriteria()
        def imageList = criteria.list {
            projections {
                property("companyImageName")
            }
        }
        if (!imageList) {
            imageList = []
        }
        return imageList
    }

}