<html>
	<head>

<!-- #include file ="json2.asp" --> 

		<link rel='stylesheet' href='oobe-desktop.css'>

		<script>
			function showHide() {
				const theDiv = document.getElementById("debugInfo");
			    if (theDiv.style.display !== "none") {
			        theDiv.style.display = "none";
			    } else {
			   		theDiv.style.display = "block";
			    }
			}
		</script>
	</head>

	<body>

		<br>			
		<button type="button" onClick="showHide()">
			Details
		</button>
		<button type="button" onClick="window.location.reload()">
		   Reload Page
		</button>
		<br>
				
		<div id="debugInfo" name="debugInfo" style="display: none;">
			<p>OS version: <% =Request.ServerVariables("http_cxh_osVersionInfo") %></p>
			<p>OS edition: <% =Request.ServerVariables("http_cxh_edition") %></p>
			<p>Manufacturer: <% =Request.ServerVariables("http_cxh_manufacturer") %></p>
			<p>Model: <% =Request.ServerVariables("http_cxh_machineModel") %></p>
			<p>Redirect: <% =Request.QueryString("redirect_uri") %></p>
			<p>Token: <% =Request.ServerVariables("http_Authorization") %></p>
			<p>Request ID: <% =Request.QueryString("client-request-id") %></p>
			<p>Mode: <% =Request.QueryString("mode") %></p>
		</div>
		
		
	</body>
</html>	