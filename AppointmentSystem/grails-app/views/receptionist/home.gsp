<!doctype html>
<html>
<head>
    <asset:stylesheet src="home.css" />
    <meta name="layout" content="main"/>
    <title>Sheffield Surgeries</title>
</head>
<body>

    <div class="row" style="overflow:hidden;">
        <asset:image src="Image1big.jpg"/>
     </div>


<div id="content" role="main">
    <div class="row">
        <div class="first">
            <h3>Appointments</h3>
            <p>View and create appoinments</p>
            <button type="button" class="btn btn-success">
            <g:link controller="Appointment" action="create">Appointment</g:link>
            </button>
            </div>

            <div class="second">
                    <h3>Add Doctor</h3>
                    <p>Create and view current prescriptions.</p>
                    <button type="button" class="btn btn-success">
                    <g:link controller="Prescription" action="create">Prescription</g:link>
                    </button>
                    </div>
            
                <div class=third">
                        <h3>Add Nurse</h3>
                        <p>Create and view current prescriptions.</p>
                        <button type="button" class="btn btn-success">
                        <g:link controller="Nurse" action="create">Nurse</g:link>
                        </button>
                        </div>

                    <div class="fourth">
                        <h3>Add Receptionist</h3>
                        <p>Create and view current prescriptions.</p>
                        <button type="button" class="btn btn-success">
                        <g:link controller="Receptionist" action="create">Receptionist</g:link>
                        </button>
                        </div>


                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    </body>
    </html>