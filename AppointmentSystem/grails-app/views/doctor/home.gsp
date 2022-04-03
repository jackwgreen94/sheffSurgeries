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
            <p>View current appoinments</p>
            <button type="button" class="btn btn-success">
            <g:link controller="Appointment" action="create">Appointments</g:link>
            </button>
            </div>

                <div class="second">
                    <h3>Prescriptions</h3>
                    <p>Create and view current prescriptions.</p>
                    <button type="button" class="btn btn-success">
                    <g:link controller="Prescription" action="create">Prescriptions</g:link>
                    </button>
                    </div>

        </div>
    </div>
    </body>
    </html>