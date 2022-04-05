package com.jgreen

class Receptionist {

   String recepName
   String recepEmail
   String username
   String password
   String recepPhone

   String toString(){

  return recepName
  
}

 static constraints = {

   recepName(blank:false, nullable:false)
   recepEmail(blank:false, nullable:false, email:true)
   username(blank:false, nullable:false, unique:true)
   password(blank:false, nullable:false)
   recepPhone(blank:false, nullable:false)

    }

static belongsTo = [surgery:Surgery]



}
