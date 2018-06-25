<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes="w"
		xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main"
>
	
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	
	<!-- bekomme Spielername übergeben -->
	<xsl:param name="spieler"/>
	
    <xsl:template match="/">
    
        <!-- finde Bestwert für Rebounds -->
        <xsl:variable name="reb">
		    <xsl:for-each select="//w:tr[descendant::w:t[1]=$spieler]/descendant::w:t[3]">
		        <xsl:sort select="." data-type="number" order="descending"/>
		        <xsl:if test="position()=1">
		            <xsl:value-of select="."/>
		        </xsl:if>
		    </xsl:for-each>
		</xsl:variable>
		
		<!-- finde Bestwert für Assists -->
		<xsl:variable name="ast">
		    <xsl:for-each select="//w:tr[descendant::w:t[1]=$spieler]/descendant::w:t[4]">
		        <xsl:sort select="." data-type="number" order="descending"/>
		        <xsl:if test="position()=1">
		            <xsl:value-of select="."/>
		        </xsl:if>
		    </xsl:for-each>
		</xsl:variable>
		
		<!-- finde Bestwert für Points -->
		<xsl:variable name="pts">
		    <xsl:for-each select="//w:tr[descendant::w:t[1]=$spieler]/descendant::w:t[5]">
		        <xsl:sort select="." data-type="number" order="descending"/>
		        <xsl:if test="position()=1">
		            <xsl:value-of select="."/>
		        </xsl:if>
		    </xsl:for-each>
		</xsl:variable>
		
		<!-- Ausgabe -->
		<div>
			<h1>
				<xsl:text>Saisonbestleistungen </xsl:text>
				<xsl:value-of select="$spieler"/>
			</h1>
			<p>
				<xsl:text>Rebounds: </xsl:text>
				<xsl:value-of select="$reb"/>
			</p>
			<p>
				<xsl:text>Assists: </xsl:text>
				<xsl:value-of select="$ast"/>
			</p>
			<p>
				<xsl:text>Points: </xsl:text>
				<xsl:value-of select="$pts"/>
			</p>
		</div>
		
    </xsl:template>      
	
</xsl:stylesheet>
