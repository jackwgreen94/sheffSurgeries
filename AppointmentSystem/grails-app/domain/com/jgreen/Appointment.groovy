package com.jgreen

class Appointment {

  
   Date appDay
   double appTime
   double appDuration
   int rooNumber

 static constraints = {

  
   appTime(blank:false, nullable:false, size:09.00..16.30)
   appDay(blank:false, nullable:false)
   appDuration(blank:false, nullable:false, maxSize:30)
   rooNumber(blank:false, nullable:false)

    }

static belongsTo = [doctor:Doctor, patient:Patient] 
static hasMany = [surgeries:Surgery] 

}
