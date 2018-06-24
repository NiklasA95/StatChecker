<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" exclude-result-prefixes="msxsl cs"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:msxsl="urn:schemas-microsoft-com:xslt"
		xmlns:cs="urn:cs"
>
	
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" cdata-section-elements="true"/>
	
	<msxsl:script language="CSharp" implements-prefix="cs"><![CDATA[
	
		private int bestRebounds;
		private int bestAssists;
		private int bestPoints;

		public string CheckStats(int reb, int ast, int pts)
  		{
			if reb > bestRebounds {
				bestRebounds = reb;
			}
			if ast > bestAssists {
				bestAssists = ast;
			}
			if pts > bestPoints {
				bestPoints;
			}
		}

		public void Banana(){}
			
	]]></msxsl:script>
</xsl:stylesheet>
