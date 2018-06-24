<html>
 <head>
  <title>Statchecker</title>
  <script type="text/javascript" language="javascript" src="../Saxonce/Saxonce.nocache.js"></script>
  <!--<script type="application/xslt+xml" language="xslt2.0" src="StatChecker.xsl" data-source="document.xml"></script>-->
 </head>
 <body>
	<h2>Statchecker</h2>
	<form action="StatChecker.php" method="post">
		Spieler: <input type="text" name="spieler">
		<input type="submit" value="Submit">
	</form> 
	
	<?php
	$spieler = $_POST['spieler'];
	?>
	
	<script>
	var t = '<?php echo $spieler;?>';
	</script>
	
	<script> 
	var onSaxonLoad = function() { 
		Saxon.run( { 
			stylesheet: "StatChecker.xsl", 
			source: "document.xml",
			parameters: {spieler: t}
		}); 
	}
	</script>
	
	
 </body>
</html>