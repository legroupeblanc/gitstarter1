import sifinance.Role
import sifinance.User
import sifinance.UserRole
 
class BootStrap {
    def init = { servletContext ->
     def roleAdmin = new Role(authority: 'ROLE_ADMIN').save()
     def roleUser = new Role(authority: 'ROLE_USER').save()
 
     def userAdmin = new User(username: 'admin', password: 'admin', enabled: true)
     userAdmin.save()
 
     UserRole.create(userAdmin, roleAdmin)
    }
 
    def destroy = {
    }
}