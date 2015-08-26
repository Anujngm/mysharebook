package com

import sharesbook.Company
import sharesbook.Investment
import sharesbook.Investor

class User {

    transient springSecurityService


    String username
    String password
    String address
    String email
    String contact
    String tokenToResetPassword
    boolean isProfileSelected
    Date dateCreated
    Date lastUpdated
    String profile
    boolean enabled = true
    boolean accountExpired
    boolean accountLocked
    boolean passwordExpired
    boolean isTokenValid

    static hasOne = [company: Company, investor: Investor]
    static hasMany = [investment: Investment]

    static transients = ['springSecurityService']

    static constraints = {
        username blank: false, unique: true
        password blank: false
        address nullable: true
        email nullable: true
        contact nullable: true
        profile nullable: true
        enabled nullable: true
        isProfileSelected nullable: true
        company nullable: true
        investor nullable: true
        investment nullable: true
        tokenToResetPassword nullable: true
        isTokenValid nullable: true
    }

    static mapping = {
        password column: '`password`'
    }

    Set<Role> getAuthorities() {
        UserRole.findAllByUser(this).collect { it.role }
    }

    def beforeInsert() {
        encodePassword()
    }

    def beforeUpdate() {
        if (isDirty('password')) {
            encodePassword()
        }
    }

    protected void encodePassword() {
        password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
    }
}
