<html>
	<head>
		<link href="/resources/css/bagTypes.css" rel="stylesheet">
	</head>
	<body>
		<script>
			function onBagClick() {
		    	window.location.href = '/packBag.jsp';
			}
		
		</script>
		<h3>What kind of bag are you packing?</h3>
		<div>
			<div>
				<img class="bagTypeImage" id="weekender" src="/resources/images/weekender.jpg" onclick="onBagClick()"/>
				<div class="bagTypeFont"><i>A weekender</i></div>
			</div>
		</div>
	</body>
</html>