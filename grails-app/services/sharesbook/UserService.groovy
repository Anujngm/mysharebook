package sharesbook

import com.Role
import com.User
import com.UserRole
import grails.transaction.Transactional

@Transactional
class UserService {

    def serviceMethod() {

    }
    def postmarkService

    void forgetPassword(User user, String toemail) {
        String token = UUID.randomUUID()
        def myLink = g.createLink(controller: "user", action: "resetPassword", params: [tokenId: token], absolute: true)
        //send email
        postmarkService.sendPostmarkMail("anuj@nexthoughts.com", toemail, "Reset Password", "SharesBook Reset Password", "<a href='${myLink}'>Click here to reset Password</a>", null, null)
        user.tokenToResetPassword = token
        user.isTokenValid = true
        user.save(flush: true)
    }

    def resetPassword(User user, String password) {
        if (user.isTokenValid) {
            user.password = password
            user.isTokenValid = false
            user.save(flush: true)
        }
        return user.isTokenValid
    }

    def saveUserInfo(User user) {
        user.save(flush: true)
        Role role = Role.findByAuthority(user.profile)
        if(!role)
        {role=new Role(authority: user.profile)
        role.save(flush: true)
        }
        UserRole.create(user, role,false)
    }
}
