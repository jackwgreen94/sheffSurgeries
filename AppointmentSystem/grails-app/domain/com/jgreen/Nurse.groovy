package com.jgreen

class Nurse {

   String nurseName
   String qualifications
   String nurseEmail
   String nurseOffice
   int nursePhone 

 static constraints = {

   nurseName(blank:false, nullable:false)
   qualifications(blank:false, nullable:false)
   nurseEmail(blank:false, nullable:false, email:true)
   nurseOffice(blank:false, nullable:false)
   nursePhone(blank:false, nullable:false)

    }

static belongsTo = [surgery:Surgery]
static hasMany = [doctor:Doctor]

}
