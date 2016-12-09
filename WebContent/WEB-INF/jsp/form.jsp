<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>

<head>
<title>User Form</title>

<!--Import Google Icon Font-->
<link href="http://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<spring:url value="/css/materialize.min.css" var="materializeCss" />
<link href="${materializeCss}" rel="stylesheet" />



<!--Let browser know website is optimized for mobile-->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>

</head>

<body>

	<div class="row">
		<form:form class="col s12" id="saveIssue" action="save"
			modelAttribute="issueP">


			<div class="row">
				<div class="input-field col s13">

					<input type="text" id="autocomplete" class="autocomplete">
					<label for="autocomplete">Autocompte</label> 
				</div>
			</div>




		</form:form>
	</div>





	<spring:url value="/javascript/karri/jquery-2.2.4.min.js"
		var="jQueryJS" />
	<spring:url value="/javascript/karri/materialize.min.js"
		var="materializeJS" />
	<spring:url value="/javascript/karri/AutoCompleter_Materialize.js"
		var="ac" />


	<script src="${jQueryJS}"></script>
	<script src="${materializeJS}"></script>
	<script src="${ac}"></script>




</body>

</html>