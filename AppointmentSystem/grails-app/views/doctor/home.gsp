<!doctype html>
<html>
<head>
    <asset:stylesheet src="home.css" />
    <meta name="layout" content="main"/>
    <title>Sheffield Surgeries</title>
</head>
<body>

    <div class="row" style="overflow:hidden;">
        <asset:image src="Image1big.jpg" style="width:600px; height:450px;"/>
     </div>


<div id="content" role="main">
    <div class="row">
        <div class="first">
            <h3>Create Prescription</h3>
            <p>Create a new prescription.</p>
            <button type="button" class="btn btn-success">
            <g:link controller="Prescription" action="create">Prescription</g:link>
            </button>
            </div>

                <div class="second">
                    <h3>View Prescriptions</h3>
                    <p>View current prescriptions.</p>
                    <button type="button" class="btn btn-success">
                    <g:link controller="Prescription" action="index">Prescriptions</g:link>
                    </button>
                    </div>

                <div class="third">
                    <h3>View Patients</h3>
                    <p>View current patients.</p>
                    <button type="button" class="btn btn-success">
                    <g:link controller="Patient" action="index">Patient</g:link>
                    </button>
                    </div>

                <div class="fourth">
                    <h3>View Appointments</h3>
                    <p>View current appointments.</p>
                    <button type="button" class="btn btn-success">
                    <g:link controller="Appointment" action="index">Appointment</g:link>
                    </button>
                    </div>

                <div class="fifth">
                    <h3>Search Prescriptions</h3>
                    <p>Search current prescriptions.</p>
                    <button type="button" class="btn btn-success">
                    <g:link controller="Doctor" action="advSearch">Prescription</g:link>
                    </button>
                    </div>
            
                

        </div>
    </div>
    </body>
    </html>