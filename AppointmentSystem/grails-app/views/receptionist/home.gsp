<!doctype html>
<html>
<head>
    <asset:stylesheet src="home.css" />
    <meta name="layout" content="main"/>
    <title>Sheffield Surgeries</title>
</head>
<body>

    <div class="row" style="overflow:hidden;">
        <asset:image src="Image1big.jpg" class="center"; style="width:600px; height:450px;"/>
     </div>


<div id="content" role="main">
    <div class="row">
        <div class="first">
            <h3>Add New Patient</h3>
            <p>Register a new patient doctor, nurse or receptionist.</p>
            <button type="button" class="btn btn-success">
            <g:link controller="Patient" action="create">Patient</g:link>
            </button>
            </div>

            <div class="second">
                    <h3>Add New Doctor</h3>
                    <p>Register new doctor.</p>
                    <button type="button" class="btn btn-success">
                    <g:link controller="Doctor" action="create">Doctor</g:link>
                    </button>
                    </div>
            
                <div class="third">
                        <h3>Add New Nurse</h3>
                        <p>Register new nurse.</p>
                        <button type="button" class="btn btn-success">
                        <g:link controller="Nurse" action="create">Nurse</g:link>
                        </button>
                        </div>

                    <div class="fourth">
                        <h3>Add New Receptionist</h3>
                        <p>Register new receptionist.</p>
                        <button type="button" class="btn btn-success">
                        <g:link controller="Receptionist" action="create">Receptionist</g:link>
                        </button>
                        </div>

                     <div class="fifth">
                        <h3>Assign Nurse</h3>
                        <p>Assign nurses to doctors.</p>
                        <button type="button" class="btn btn-success">
                        <g:link controller="Nurse" action="index">Nurse</g:link>
                        </button>
                        </div>

                    <div class="sixth">
                        <h3>Assign Patient</h3>
                        <p>Assign patients to doctors.</p>
                        <button type="button" class="btn btn-success">
                        <g:link controller="Patient" action="index">Patient</g:link>
                        </button>
                        </div>

                    <div class="seventh">
                        <h3>Search Patients</h3>
                        <p>Search for registered patients.</p>
                        <button type="button" class="btn btn-success">
                        <g:link controller="Receptionist" action="advSearch">SearchPatient</g:link>
                        </button>
                        </div>

                   


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    </body>
    </html>