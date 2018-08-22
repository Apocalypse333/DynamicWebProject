<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.js"></script>
<script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="https://code.jquery.com/ui/1.12.3/smoothness/jquery-ui.css"></script>

</head>
<body>

	
From:<script type="text/javascript" >
		$(function() {
			$("#from").datepicker({
				showOn: 'both', 
				buttonImageOnly : true,
				changeMonth : true,
				showOtherMonths : true,
				selectOtherMonths : true,
			 onClose: function (selectedDate) {
			    $("#to").datepicker("option", "minDate", selectedDate);} 
			});
	</script>
	&nbsp; 


To:	<script type="text/javascript" >
			$("#to").datepicker({
				
				maxDate : 0,
				showAnim : "fold",
				changeMonth : true,
				changeYear : true,
				numberOfMonths : 1,
				onClose : function(selectedDate) {
					$("#from").datepicker("option", "maxDate", selectedDate);
				}
			});
		});
	</script>
	<input name="from" id="from" type="text" />
	<input name="to" id="to" type="text" />  
</body>
</html>