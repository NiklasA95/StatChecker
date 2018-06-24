<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" exclude-result-prefixes="msxsl cs"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:msxsl="urn:schemas-microsoft-com:xslt"
		xmlns:cs="urn:cs"
>
	
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" cdata-section-elements="true"/>
	
	<msxsl:script language="CSharp" implements-prefix="cs"><![CDATA[
	
		private int bestRebounds = 0;
		private int bestAssists = 0;
		private int bestPoints = 0;

		public void CheckStats(int reb, int ast, int pts)
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

		public int BestRebounds()
		{
			return bestRebounds;
		}

		public int BestAssists()
		{
			return bestAssists;
		}

		public int BestPoints()
		{
			return bestPoints;
		}
			
	]]></msxsl:script>
</xsl:stylesheet>
