package sifinance

class Project {
       
    static searchable = true 
    
  int idProjet
 int Utilisateur_idUtilisateur
 int idOwner
  String title
  Date creationDate
  String description
  String projectPicture
  float foundingObjective
  Date foundingDeadline
  float avaiableFound
 
    static constraints = {
    }
}

