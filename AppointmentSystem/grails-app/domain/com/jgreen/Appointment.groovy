package com.jgreen

class Appointment {

   int appID
   Date appDay
   int appTime
   int appDuration
   int roomNumber

   String toString(){

  return appID
  
}

 static constraints = {

   appID(blank:false, nullable:false, unique:true)
   appTime(blank:false, nullable:false range:0930..1700)
   appDay(blank:false, nullable:false)
   appDuration(blank:false, nullable:false, max:30)
   roomNumber(blank:false, nullable:false)

    }

static belongsTo = [doctor:Doctor, patient:Patient, surgeries:Surgery] 



}
