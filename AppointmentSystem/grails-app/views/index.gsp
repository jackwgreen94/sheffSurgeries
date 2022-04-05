<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>

    <asset:stylesheet src="main.css"/>

    <title>Sheffield Surgeries</title>
</head>
<body>




<div id="content" role="main">
    <div class="container">
        <section class="row colset-2-its">
            <h1>Welcome to Sheffield Surgeries</h1>

            <p>
                The premium medical service in Sheffield and surrounding areas.
            </p>
            
            <div class="row" style="overflow:hidden;">
                   <asset:image src="Image1big.jpg" style="width:600px; height:450px;"/>
                </div>
        

            <div id="controllers" role="navigation">
                <h2>Services:</h2>
                <ul>
                    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                        <li class="controller">
                            <g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link>
                        </li>
                    </g:each>
                </ul>
            </div>
        </section>
    </div>
</div>

</body>
</html>
