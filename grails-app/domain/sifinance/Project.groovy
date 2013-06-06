package sifinance

class Project {
       
    static searchable = true 
    

 String projectTitle
 String shortDescription
 String projectLocation
 Date fundingDuration
 int fundingGoal
 byte[] projectPicture
 String pictureType 
 Double availableFound =0;

 Date foundingDeadline
 

 
    static constraints = {
    projectPicture(nullable:true, maxSize: 16384 /*44 16K */)
    pictureType(nullable:true)
    availableFound(nullable:true)
    
    }
    /*public Project récupérerFond(Transactions nouvelleTransaction, User user){
       Double  Transaction;
       Project project =new Project();
       recupererMontant(nouvelleTransaction);
       newAvailableFound = availableFound + Transaction
        
       return project;
    }*/
  /*public Double  recupererMontant(Transactions transaction){
      Double temp;
   
      if(transaction!=null){
          temp=Double.parseDouble(transaction);
      }
      return temp;
  }*/
}