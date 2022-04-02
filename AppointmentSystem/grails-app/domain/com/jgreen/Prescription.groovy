package com.jgreen

class Prescription {

   String pharmacyName
   int prescriptionNumber
   String medicine
   int daysSupply
   double totalCost
   Date dateIssued
   Boolean patientPaying

   String toString(){

  return prescriptionNumber
  
}

 static constraints = {

   pharmacyName(blank:false, nullable:false)
   prescriptionNumber(blank:false, nullable:false)
   medicine(blank:false, nullable:false)
   daysSupply(blank:false, nullable:false)
   totalCost(blank:false, nullable:false)
   dateIssued(blank:false, nullable:false)
   patientPaying(blank:false, nullable:false)

    }

static belongsTo = [doctor:Doctor, patient:Patient]



}
