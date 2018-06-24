<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes="cs w"
		xmlns:cs="urn:cs"
		xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main"
>
	
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	
	<xsl:include href="CSharp.xsl"/>
	<!--
	<xsl:variable name="spieler">Motley</xsl:variable>
    -->
	
	<xsl:param name="spieler" as="xs:string" required="yes"/>
	
    <xsl:template match="/">
		<div>
			<h1>
				<xsl:text>Saisonbestleistungen </xsl:text>
				<xsl:value-of select="$spieler"/>
			</h1>
			<xsl:apply-templates select="//w:tr"/>
			<p>
				<xsl:text>Rebounds: </xsl:text>
				<xsl:value-of select="cs:BestRebounds()"/>
			</p>
			<p>
				<xsl:text>Assists: </xsl:text>
				<xsl:value-of select="cs:BestAssists()"/>
			</p>
			<p>
				<xsl:text>Points: </xsl:text>
				<xsl:value-of select="cs:BestPoints()"/>
			</p>
		</div>
    </xsl:template>      
    
    <xsl:template match="w:tr">
        <xsl:if test="descendant::w:t[1]=$spieler">
			<xsl:variable name="rebs" select="descendant::w:t[3]"/>
			<xsl:variable name="ast" select="descendant::w:t[4]"/>
			<xsl:variable name="pts" select="descendant::w:t[5]"/>
			<xsl:value-of select="cs:CheckStats($rebs, $ast, $pts)"/>
		</xsl:if>
    </xsl:template>
	
</xsl:stylesheet>