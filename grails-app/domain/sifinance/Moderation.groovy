package sifinance

class Moderation {

    Date date=new Date()
    String url
    
    static constraints = {
        url blank: false, nullable: false; unique : true
    }
}
