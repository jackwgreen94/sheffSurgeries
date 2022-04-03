package com.jgreen

class Appointment {

   String appID
   Date appDay
   int appTime
   double appDuration
   int roomNumber

   String toString(){

  return appID
  
}

 static constraints = {

   appID(blank:false, nullable:false)
   appTime(blank:false, nullable:false, size:09.30..16.30)
   appDay(blank:false, nullable:false)
   appDuration(blank:false, nullable:false, maxSize:30)
   roomNumber(blank:false, nullable:false)

    }

static belongsTo = [doctor:Doctor, patient:Patient, surgeries:Surgery] 



}
