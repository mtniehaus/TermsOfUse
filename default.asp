<html>
	<head>
		<%
			Dim OobeStyle
			If Instr(Request.ServerVariables("http_cxh_osVersionInfo"), "19") > 0 then
				OobeStyle = "oobe-desktop.css"
			else
				OobeStyle = "oobe-light.css"
			End if
		%>
		<link rel='stylesheet' href='<% =OobeStyle %>'>

		<script>
			function showHide() {
				const theDiv = document.getElementById("debugInfo");
			    if (theDiv.style.display !== "none") {
			        theDiv.style.display = "none";
			    } else {
			   		theDiv.style.display = "block";
			    }
			}

			function doIt() {
                // Save the time zone ID in local storage
                localStorage.TimeZone = document.getElementById('TZ').value;
                // Submit the form to continue
                document.forms[0].submit();
            }

		</script>
	</head>

	<body>

		<p class="input-label">What time zone are you in?</p>
		<br>
		
		<select id="Timezone" name="Timezone" class="win-dropdown">

		<!-- 
			To generate TZ options:
			Get-TimeZone -ListAvailable | % { "<option value='$($_.Id)'>$($_.DisplayName)</option>" } | out-file tz.htm
			Content pasted in below, since it looks like Azure doesn't support an ASP include.
		 -->

<option value='Dateline Standard Time'>(UTC-12:00) International Date Line West</option>
<option value='UTC-11'>(UTC-11:00) Coordinated Universal Time-11</option>
<option value='Aleutian Standard Time'>(UTC-10:00) Aleutian Islands</option>
<option value='Hawaiian Standard Time'>(UTC-10:00) Hawaii</option>
<option value='Marquesas Standard Time'>(UTC-09:30) Marquesas Islands</option>
<option value='Alaskan Standard Time'>(UTC-09:00) Alaska</option>
<option value='UTC-09'>(UTC-09:00) Coordinated Universal Time-09</option>
<option value='Pacific Standard Time (Mexico)'>(UTC-08:00) Baja California</option>
<option value='UTC-08'>(UTC-08:00) Coordinated Universal Time-08</option>
<option value='Pacific Standard Time'>(UTC-08:00) Pacific Time (US & Canada)</option>
<option value='US Mountain Standard Time'>(UTC-07:00) Arizona</option>
<option value='Mountain Standard Time (Mexico)'>(UTC-07:00) Chihuahua, La Paz, Mazatlan</option>
<option value='Mountain Standard Time'>(UTC-07:00) Mountain Time (US & Canada)</option>
<option value='Yukon Standard Time'>(UTC-07:00) Yukon</option>
<option value='Central America Standard Time'>(UTC-06:00) Central America</option>
<option value='Central Standard Time'>(UTC-06:00) Central Time (US & Canada)</option>
<option value='Easter Island Standard Time'>(UTC-06:00) Easter Island</option>
<option value='Central Standard Time (Mexico)'>(UTC-06:00) Guadalajara, Mexico City, Monterrey</option>
<option value='Canada Central Standard Time'>(UTC-06:00) Saskatchewan</option>
<option value='SA Pacific Standard Time'>(UTC-05:00) Bogota, Lima, Quito, Rio Branco</option>
<option value='Eastern Standard Time (Mexico)'>(UTC-05:00) Chetumal</option>
<option value='Eastern Standard Time'>(UTC-05:00) Eastern Time (US & Canada)</option>
<option value='Haiti Standard Time'>(UTC-05:00) Haiti</option>
<option value='Cuba Standard Time'>(UTC-05:00) Havana</option>
<option value='US Eastern Standard Time'>(UTC-05:00) Indiana (East)</option>
<option value='Turks And Caicos Standard Time'>(UTC-05:00) Turks and Caicos</option>
<option value='Paraguay Standard Time'>(UTC-04:00) Asuncion</option>
<option value='Atlantic Standard Time'>(UTC-04:00) Atlantic Time (Canada)</option>
<option value='Venezuela Standard Time'>(UTC-04:00) Caracas</option>
<option value='Central Brazilian Standard Time'>(UTC-04:00) Cuiaba</option>
<option value='SA Western Standard Time'>(UTC-04:00) Georgetown, La Paz, Manaus, San Juan</option>
<option value='Pacific SA Standard Time'>(UTC-04:00) Santiago</option>
<option value='Newfoundland Standard Time'>(UTC-03:30) Newfoundland</option>
<option value='Tocantins Standard Time'>(UTC-03:00) Araguaina</option>
<option value='E. South America Standard Time'>(UTC-03:00) Brasilia</option>
<option value='SA Eastern Standard Time'>(UTC-03:00) Cayenne, Fortaleza</option>
<option value='Argentina Standard Time'>(UTC-03:00) City of Buenos Aires</option>
<option value='Greenland Standard Time'>(UTC-03:00) Greenland</option>
<option value='Montevideo Standard Time'>(UTC-03:00) Montevideo</option>
<option value='Magallanes Standard Time'>(UTC-03:00) Punta Arenas</option>
<option value='Saint Pierre Standard Time'>(UTC-03:00) Saint Pierre and Miquelon</option>
<option value='Bahia Standard Time'>(UTC-03:00) Salvador</option>
<option value='UTC-02'>(UTC-02:00) Coordinated Universal Time-02</option>
<option value='Mid-Atlantic Standard Time'>(UTC-02:00) Mid-Atlantic - Old</option>
<option value='Azores Standard Time'>(UTC-01:00) Azores</option>
<option value='Cape Verde Standard Time'>(UTC-01:00) Cabo Verde Is.</option>
<option value='UTC'>(UTC) Coordinated Universal Time</option>
<option value='GMT Standard Time'>(UTC+00:00) Dublin, Edinburgh, Lisbon, London</option>
<option value='Greenwich Standard Time'>(UTC+00:00) Monrovia, Reykjavik</option>
<option value='Sao Tome Standard Time'>(UTC+00:00) Sao Tome</option>
<option value='Morocco Standard Time'>(UTC+01:00) Casablanca</option>
<option value='W. Europe Standard Time'>(UTC+01:00) Amsterdam, Berlin, Bern, Rome, Stockholm, Vienna</option>
<option value='Central Europe Standard Time'>(UTC+01:00) Belgrade, Bratislava, Budapest, Ljubljana, Prague</option>
<option value='Romance Standard Time'>(UTC+01:00) Brussels, Copenhagen, Madrid, Paris</option>
<option value='Central European Standard Time'>(UTC+01:00) Sarajevo, Skopje, Warsaw, Zagreb</option>
<option value='W. Central Africa Standard Time'>(UTC+01:00) West Central Africa</option>
<option value='Jordan Standard Time'>(UTC+02:00) Amman</option>
<option value='GTB Standard Time'>(UTC+02:00) Athens, Bucharest</option>
<option value='Middle East Standard Time'>(UTC+02:00) Beirut</option>
<option value='Egypt Standard Time'>(UTC+02:00) Cairo</option>
<option value='E. Europe Standard Time'>(UTC+02:00) Chisinau</option>
<option value='Syria Standard Time'>(UTC+02:00) Damascus</option>
<option value='West Bank Standard Time'>(UTC+02:00) Gaza, Hebron</option>
<option value='South Africa Standard Time'>(UTC+02:00) Harare, Pretoria</option>
<option value='FLE Standard Time'>(UTC+02:00) Helsinki, Kyiv, Riga, Sofia, Tallinn, Vilnius</option>
<option value='Israel Standard Time'>(UTC+02:00) Jerusalem</option>
<option value='South Sudan Standard Time'>(UTC+02:00) Juba</option>
<option value='Kaliningrad Standard Time'>(UTC+02:00) Kaliningrad</option>
<option value='Sudan Standard Time'>(UTC+02:00) Khartoum</option>
<option value='Libya Standard Time'>(UTC+02:00) Tripoli</option>
<option value='Namibia Standard Time'>(UTC+02:00) Windhoek</option>
<option value='Arabic Standard Time'>(UTC+03:00) Baghdad</option>
<option value='Turkey Standard Time'>(UTC+03:00) Istanbul</option>
<option value='Arab Standard Time'>(UTC+03:00) Kuwait, Riyadh</option>
<option value='Belarus Standard Time'>(UTC+03:00) Minsk</option>
<option value='Russian Standard Time'>(UTC+03:00) Moscow, St. Petersburg</option>
<option value='E. Africa Standard Time'>(UTC+03:00) Nairobi</option>
<option value='Volgograd Standard Time'>(UTC+03:00) Volgograd</option>
<option value='Iran Standard Time'>(UTC+03:30) Tehran</option>
<option value='Arabian Standard Time'>(UTC+04:00) Abu Dhabi, Muscat</option>
<option value='Astrakhan Standard Time'>(UTC+04:00) Astrakhan, Ulyanovsk</option>
<option value='Azerbaijan Standard Time'>(UTC+04:00) Baku</option>
<option value='Russia Time Zone 3'>(UTC+04:00) Izhevsk, Samara</option>
<option value='Mauritius Standard Time'>(UTC+04:00) Port Louis</option>
<option value='Saratov Standard Time'>(UTC+04:00) Saratov</option>
<option value='Georgian Standard Time'>(UTC+04:00) Tbilisi</option>
<option value='Caucasus Standard Time'>(UTC+04:00) Yerevan</option>
<option value='Afghanistan Standard Time'>(UTC+04:30) Kabul</option>
<option value='West Asia Standard Time'>(UTC+05:00) Ashgabat, Tashkent</option>
<option value='Ekaterinburg Standard Time'>(UTC+05:00) Ekaterinburg</option>
<option value='Pakistan Standard Time'>(UTC+05:00) Islamabad, Karachi</option>
<option value='Qyzylorda Standard Time'>(UTC+05:00) Qyzylorda</option>
<option value='India Standard Time'>(UTC+05:30) Chennai, Kolkata, Mumbai, New Delhi</option>
<option value='Sri Lanka Standard Time'>(UTC+05:30) Sri Jayawardenepura</option>
<option value='Nepal Standard Time'>(UTC+05:45) Kathmandu</option>
<option value='Central Asia Standard Time'>(UTC+06:00) Astana</option>
<option value='Bangladesh Standard Time'>(UTC+06:00) Dhaka</option>
<option value='Omsk Standard Time'>(UTC+06:00) Omsk</option>
<option value='Myanmar Standard Time'>(UTC+06:30) Yangon (Rangoon)</option>
<option value='SE Asia Standard Time'>(UTC+07:00) Bangkok, Hanoi, Jakarta</option>
<option value='Altai Standard Time'>(UTC+07:00) Barnaul, Gorno-Altaysk</option>
<option value='W. Mongolia Standard Time'>(UTC+07:00) Hovd</option>
<option value='North Asia Standard Time'>(UTC+07:00) Krasnoyarsk</option>
<option value='N. Central Asia Standard Time'>(UTC+07:00) Novosibirsk</option>
<option value='Tomsk Standard Time'>(UTC+07:00) Tomsk</option>
<option value='China Standard Time'>(UTC+08:00) Beijing, Chongqing, Hong Kong, Urumqi</option>
<option value='North Asia East Standard Time'>(UTC+08:00) Irkutsk</option>
<option value='Singapore Standard Time'>(UTC+08:00) Kuala Lumpur, Singapore</option>
<option value='W. Australia Standard Time'>(UTC+08:00) Perth</option>
<option value='Taipei Standard Time'>(UTC+08:00) Taipei</option>
<option value='Ulaanbaatar Standard Time'>(UTC+08:00) Ulaanbaatar</option>
<option value='Aus Central W. Standard Time'>(UTC+08:45) Eucla</option>
<option value='Transbaikal Standard Time'>(UTC+09:00) Chita</option>
<option value='Tokyo Standard Time'>(UTC+09:00) Osaka, Sapporo, Tokyo</option>
<option value='North Korea Standard Time'>(UTC+09:00) Pyongyang</option>
<option value='Korea Standard Time'>(UTC+09:00) Seoul</option>
<option value='Yakutsk Standard Time'>(UTC+09:00) Yakutsk</option>
<option value='Cen. Australia Standard Time'>(UTC+09:30) Adelaide</option>
<option value='AUS Central Standard Time'>(UTC+09:30) Darwin</option>
<option value='E. Australia Standard Time'>(UTC+10:00) Brisbane</option>
<option value='AUS Eastern Standard Time'>(UTC+10:00) Canberra, Melbourne, Sydney</option>
<option value='West Pacific Standard Time'>(UTC+10:00) Guam, Port Moresby</option>
<option value='Tasmania Standard Time'>(UTC+10:00) Hobart</option>
<option value='Vladivostok Standard Time'>(UTC+10:00) Vladivostok</option>
<option value='Lord Howe Standard Time'>(UTC+10:30) Lord Howe Island</option>
<option value='Bougainville Standard Time'>(UTC+11:00) Bougainville Island</option>
<option value='Russia Time Zone 10'>(UTC+11:00) Chokurdakh</option>
<option value='Magadan Standard Time'>(UTC+11:00) Magadan</option>
<option value='Norfolk Standard Time'>(UTC+11:00) Norfolk Island</option>
<option value='Sakhalin Standard Time'>(UTC+11:00) Sakhalin</option>
<option value='Central Pacific Standard Time'>(UTC+11:00) Solomon Is., New Caledonia</option>
<option value='Russia Time Zone 11'>(UTC+12:00) Anadyr, Petropavlovsk-Kamchatsky</option>
<option value='New Zealand Standard Time'>(UTC+12:00) Auckland, Wellington</option>
<option value='UTC+12'>(UTC+12:00) Coordinated Universal Time+12</option>
<option value='Fiji Standard Time'>(UTC+12:00) Fiji</option>
<option value='Kamchatka Standard Time'>(UTC+12:00) Petropavlovsk-Kamchatsky - Old</option>
<option value='Chatham Islands Standard Time'>(UTC+12:45) Chatham Islands</option>
<option value='UTC+13'>(UTC+13:00) Coordinated Universal Time+13</option>
<option value='Tonga Standard Time'>(UTC+13:00) Nuku'alofa</option>
<option value='Samoa Standard Time'>(UTC+13:00) Samoa</option>
<option value='Line Islands Standard Time'>(UTC+14:00) Kiritimati Island</option>

		</select>

		<form action="<% =Request.QueryString('redirect_uri') %>" method="GET">
			<input type='hidden' name='OpaqueBlob' id='OpaqueBlob' value='<% =Request.QueryString("client-request-id") %>' >
            <input type='hidden' name='IsAccepted' id='IsAccepted' value="true" >
            <input type='hidden' name='client-request-id' id='client-request-id' value='<% =Request.QueryString("client-request-id") %>' >			
		</form>

		<br><br>
		<button type="button" onClick="doIt()" class="control-button button-two button_primary win-button">
			Accept
		</button>
		<button type="button" onClick="showHide()" class="control-button win-button">
			Details
		</button>
		<button type="button" onClick="window.location.reload()" class="control-button win-button">
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