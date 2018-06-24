<html>
 <head>
  <title>Statchecker</title>
 </head>
 <body>
	<h2>Statchecker</h2>
	<form action="StatChecker.php" method="post">
		Spieler: <input type="text" name="spieler">
		<input type="submit" value="Submit">
	</form> 
	<?php
	//if(isset($_POST['submit']))
	//{
		$xslDoc = new DOMDocument();
		$xslDoc->load("StatChecker.xsl");

		$xmlDoc = new DOMDocument();
		$xmlDoc->load("document.xml");

		$proc = new XSLTProcessor();
		$proc->importStylesheet($xslDoc);
		
		$proc->setParameter('', 'spieler', $_POST['spieler']);
		
		echo $proc->transformToXML($xmlDoc);
	//}
	?>
 </body>
</html>