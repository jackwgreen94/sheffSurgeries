package com.jgreen

class Doctor {

   String doctorName
   String qualifications
   String position
   String doctorEmail
   String username
   String password
   String doctorOffice
   String doctorPhone
   String bio

   String toString(){

  return doctorName
  
}

 static constraints = {
   
   doctorName(blank:false, nullable:false)
   qualifications(blank:false, nullable:false)
   position(blank:false, nullable:false)
   doctorEmail(blank:false, nullable:false, email:true)
   username(blank:false, nullable:false)
   password(blank:false, nullable:false)
   doctorOffice(blank:false, nullable:false)
   doctorPhone(blank:false, nullable:false)
   bio(blank:false, nullable:false, widget:'textarea')

    }

static belongsTo = [surgery:Surgery]
static hasMany = [nurse:Nurse, appointment:Appointment, prescription:Prescription, patient:Patient]




}
