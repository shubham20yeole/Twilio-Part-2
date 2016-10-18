</head>
<body onload="myFunction()">
	<p class="title-1 font1">
		<marquee behavior="scroll" direction="left">
			<img
				src="https://cdn0.iconfinder.com/data/icons/connection/512/icon-18.png"
				width="37" height="32"> <span style="font-size: 10px;">SMS
				Service </span> | <span style="color: red">Format of number should be
				like +12018875323</span>
		</marquee>
	</p>
	<form method="POST" action="collectData">
	<input type="text" name="name" placeholder="Full Name" required><br><br>
	<input type="text" name="phone" placeholder="Phone Number" required><br><br>
	<input type="submit" value="submit">
	</form>
</body>