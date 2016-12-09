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
	<form:form class="col s12" id="saveIssue" action="save" modelAttribute="issueP">
		
					
			<div class="row">
				<div class="input-field col s13">
<<<<<<< HEAD
					<input type="text"
						id="autocomplete" class="autocomplete"> <label
						for="autocomplete">Autocompte</label>
=======
					<input type="text" name="issueId" id="issueID"> <label for="issueID">IssueID</label>
>>>>>>> 1d32214c08cd0658019461b9860d52954fa6a821
				</div>
			</div>
			
			
					
			<div class="row">
				<div class="input-field col s13">
					<input type="text" name="issueName" id="issueNameID"> <label for="issueNameID">IssueName</label>
				</div>
			</div>
			
			

			<div class="row">
			
				<button class="waves-effect waves-light btn-large" id ="buttonsubmit" type="submit">Submit</button>
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
	
	
	<script type="text/javascript">
	
	$(document).ready(function(){
		$('#buttonsubmit').click(function(){
			
			
	//alert('hello');
			$.ajax({
				type :'POST',
				url:'/IssueApp/WEB-INF/jsp/form.jsp',
				success:function(data){
				$('.result').html(data);
				}
				
			});
			
		});
	});
	
	
	
	</script>
	



</body>

</html>