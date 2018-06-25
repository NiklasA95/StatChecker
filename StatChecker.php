<html>
	<head>
		<title>Statchecker</title>
		<script type="text/javascript" language="javascript" src="../Saxonce/Saxonce.nocache.js"></script>
	</head>
	<body>
		<h2>Statchecker</h2>
		<form action="StatChecker.php" method="post">
			Spieler: 
			<input type="text" name="spieler">
			<input type="submit" value="Submit">
		</form> 
	
		<?php
			$spieler = $_POST['spieler'];
			
			$file = 'Basketball_Tabellen.docx';
			$newfile = 'Basketball_Tabellen.zip';
			copy($file, $newfile);
			
			$zip = new ZipArchive;
			if($zip->open('Basketball_Tabellen.zip') === TRUE) {
				$zip->extractTo('Basketball_Tabellen/');
				$zip->close();
			}
		?>
		
		<script>
			var t = '<?php echo $spieler;?>';
		</script>
		
		<script> 
			var onSaxonLoad = function() { 
				Saxon.run( { 
					stylesheet: "StatChecker.xsl", 
					source: "Basketball_Tabellen/word/document.xml",
					parameters: {spieler: t}
				}); 
			}
		</script>	
	</body>
</html>