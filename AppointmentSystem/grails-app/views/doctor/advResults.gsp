<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>

    <asset:stylesheet src="main.css"/>

    <title>Sheffield Surgeries</title>
</head>
<body>

    <div class="row">
        <h1>Prescription Advanced Search</h1>
         <h3>Advanced Results</h3>

         <p>Searched
            for prescriptions matching <em>${term}</em>.
            Found <strong>${prescriptions.size()}</strong> prescriptions.
            </p>

            <ul>
                <g:each var="prescription" in="${prescriptions}">
                <li><g:link controller="prescription" action="show"
               id="${prescription.id}">${prescription.medicine}</g:link></li>
                </g:each>
                </ul>

                <g:link action='advSearch'>Search Again</g:link>
        </div>
    </body>
</html>