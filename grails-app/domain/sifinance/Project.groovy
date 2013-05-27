package sifinance

class Project {
       
    static searchable = true 
    
  int idProjet
 int Utilisateur_idUtilisateur
 int idOwner
  String title
  Date creationDate
  String description
  byte[] projectPicture
  float foundingObjective
  Date foundingDeadline
  float avaiableFound
  String avatarType 
 
    static constraints = {
    projectPicture(nullable:true, maxSize: 16384 /* 16K */)
    avatarType(nullable:true)
    }
}

