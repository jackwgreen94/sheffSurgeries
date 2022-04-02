package com.jgreen

class Surgery {

   String name
   String address
   String postcode
   int telephone
   int numberOfPatients
   String description
   double openingTime
   Boolean registeringNewPatients

   String toString(){

  return name
  
}


 static constraints = {
   
   name(blank:false, nullable:false)
   address(blank:false, nullable:false)
   postcode(blank:false, nullable:false)
   telephone(blank:false, nullable:false)
   numberOfPatients(blank:false, nullable:false)
   description(blank:false, nullable:false, widget:'textarea')
   openingTime(blank:false, nullable:false, minSize:09.00)
   registeringNewPatients(blank:false, nullable:false)

    }

static hasMany = [doctors:Doctor, receptionists:Receptionist, nurses:Nurse, appointments:Appointment, patients:Patient]



}
