package com.jgreen

class Doctor {

   String doctorName
   String qualifications
   String position
   String doctorEmail
   String password
   String doctorOffice
   int doctorPhone
   String bio

 static constraints = {
   
   doctorName(blank:false, nullable:false)
   qualifications(blank:false, nullable:false)
   position(blank:false, nullable:false)
   doctorEmail(blank:false, nullable:false, email:true)
   password(blank:false, nullable:false)
   doctorOffice(blank:false, nullable:false)
   doctorPhone(blank:false, nullable:false)
   bio(blank:false, nullable:false, widget:'textarea')

    }

static belongsTo = [surgery:Surgery]
static hasMany = [nurse:Nurse, appointment:Appointment, prescription:Prescription, patient:Patient]


}
