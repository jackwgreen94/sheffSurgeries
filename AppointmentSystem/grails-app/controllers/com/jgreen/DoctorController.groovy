package com.jgreen

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class DoctorController {

    DoctorService doctorService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond doctorService.list(params), model:[doctorCount: doctorService.count()]
    }

    def show(Long id) {
        respond doctorService.get(id)
    }

    def create() {
        respond new Doctor(params)
    }

    def save(Doctor doctor) {
        if (doctor == null) {
            notFound()
            return
        }

        try {
            doctorService.save(doctor)
        } catch (ValidationException e) {
            respond doctor.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'doctor.label', default: 'Doctor'), doctor.id])
                redirect doctor
            }
            '*' { respond doctor, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond doctorService.get(id)
    }

    def update(Doctor doctor) {
        if (doctor == null) {
            notFound()
            return
        }

        try {
            doctorService.save(doctor)
        } catch (ValidationException e) {
            respond doctor.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'doctor.label', default: 'Doctor'), doctor.id])
                redirect doctor
            }
            '*'{ respond doctor, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        doctorService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'doctor.label', default: 'Doctor'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'doctor.label', default: 'Doctor'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def login() {
    }

    def validate() {
    def user = Doctor.findByDoctoremail(params.doctoremail)
    if (user && user.password == params.password){
    session.user = user
    render view:'home'
    }

    else{
    flash.message = "Invalid username and password."
    render view:'login'
    }
}


    def logout = {
    session.user = null
    redirect(uri:'/')
    } 

def advSearch(){
   render view:'advSearch'
   }


def advResults() {
   

            def prescriptionProps=Prescription.metaClass.properties*.name

            def prescriptions = Prescription.withCriteria {
            "${params.queryType}" {

            params.each { field, value ->
            if (prescriptionProps.grep(field) && value) {
            ilike(field, value)

                        }
                    }
                }
            
            }


            return [ prescriptions : prescriptions ]
 }



}
