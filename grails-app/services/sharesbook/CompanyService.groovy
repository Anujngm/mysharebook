package sharesbook

import com.User
import grails.plugin.springsecurity.SpringSecurityService
import grails.transaction.Transactional

@Transactional
class CompanyService {

    def serviceMethod() {

    }

    def saveCompanyInfo(def params, String img, User user) {
        Company company = new Company(params)
        company.companyImageName = img
        company.user = user
        company.save(flush: true)
    }

    def listOfInvestment(Company company){

        def list
        if(!company)
    {list=[]
    }
        else{
            println("inside service")
            println(company)
            list=Investment.findByCompany(company,null)
        }
    return list
    }

    String uploadImage(def uploadedFile, User user) {
        String address, image
        if (!uploadedFile.empty) {
            String str = "/home/narendra/Workspace/pics/CompanyProfileImage/";
            File file = new File(str)
            if (!file.exists()) {
                file.mkdir()
            }
            List<String> extention = uploadedFile.contentType.split('/')
            println(extention[1])
            image = user.getId() + "." + extention[1]
            address = '/home/narendra/Workspace/pics/CompanyProfileImage/' + image
            address.trim()
            uploadedFile.transferTo(new File(address))
            println("image uploaded")
        } else {
            println("fail to save image or input is not given")
            image = "Fail to save image"
        }
        return image
    }
}
