package sharesbook

import com.Role
import com.User
import com.UserRole
import grails.plugin.springsecurity.annotation.Secured

class CompanyController {

    @Secured('permitAll')
    def index() {}

    @Secured('permitAll')
    def raiseFund() {

    }

    @Secured('permitAll')
    def saveNewUserProfile() {
        User user = springSecurityService.currentUser as User
        Role role = Role.findByAuthority("COMPANY")
        if (!role) {
            role = new Role(authority: "COMPANY")
            role.save(flush: true)
        }
        UserRole.create(user, role, false)
        user.isProfileSelected = true
        user.save(flush: true)
        redirect(controller: "user", action: "HomePage")
        return
    }

    @Secured('permitAll')
    def showUserCompanyProfile() {
        //company profile is displayed
        User user = springSecurityService.currentUser as User

        if (!user) {
            flash.message = "Cannot resolve logged in user session"
            redirect(controller: "user", action: "HomePage")
            return
        }

        Company company = Company.findByUser(user)
        if (!company) {
            redirect(action: "createCompanyProfile")
            return
        }
        def listOfInvestment = companyService.listOfInvestment(company)
        println(listOfInvestment)
        render(view: "showUserCompanyProfile", model: [company: company, listOfInvestment: listOfInvestment])
    }

    def springSecurityService
    def companyService

    @Secured(['permitAll'])
    def createCompanyProfile() {
        //company profile is created
        User user = springSecurityService.currentUser as User
        if (!user) {
            redirect(controller: "user", action: "HomePage")
            return
        }
//        if (Company.findByUser(user)) {
//            flash.message = "You are already registed"
//            redirect(controller: "user", action: "HomePage")
//            return
//        }
        if (params.companyName) {
            //image uploaded
            def uploadedFile = request.getFile('myFile')
            String img = companyService.uploadImage(uploadedFile, user)
            companyService.saveCompanyInfo(params, img, user)
            params.clear()
            flash.clear()
            redirect(controller: "user", action: "HomePage")
            return
        } else {
            render(view: 'createCompanyProfile')
        }

    }
    private static final File IMAGES_DIR = new File('/home/narendra/Workspace/pics/CompanyProfileImage')

    @Secured('permitAll')
    def loadImage() {
        //single image is written/displayed to gsp-> image name should be provided
        println(params.imgName)
        File image = new File(IMAGES_DIR.getAbsolutePath() + "/" + params.imgName)
        if (!image?.exists() || !image.isFile()) {
            println("file not found")
        } else {
            OutputStream out = response.getOutputStream();
            out.write(image.bytes);
            out.close();
        }
    }
}
