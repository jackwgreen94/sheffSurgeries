<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Doctors Login</title>
</head>
<body>

<g:if test="${flash.message}">
 <div class="message">${flash.message}</div>
 </g:if>

  <g:form action="validate">
 <input type="hidden" name="cName" value="${cName}">
 <input type="hidden" name="aName" value="${aName}">

 <table>

                <tr class="prop">
                  <td class="name">
                    <label for="doctoremail">Email:</label>
                  </td>
                  <td class="value">
                    <input type="text" id="doctoremail" name="doctoremail" value="">
                  </td></tr>
                <tr class="prop">
                  <td class="name">
                    <label for="password">Password:</label>
                  </td>
                  <td class="value">
                    <input type="password" id="password" name="password" value="">
                  </td></tr>
                <tr><td></td>
                  <td>
                    <input type="submit" value="login"/>
                  </td></tr>

            </table>

        </g:form>

    </body>

</html>