<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<!--<xsl:output method="html" encoding="iso-8859-1"/>-->

<xsl:template match="/">
	<h3><xsl:value-of select="$spieler"/><br></br></h3>
	<xsl:apply-templates/>
</xsl:template>

<xsl:template match="body">
	
	<xsl:variable name="tbl/tr/tc/p/r/t">
		<xsl:value-of-select="."/>
	</xsl:variable>
	
	<xsl:for-each select="tbl"




	Bestwert Punkte: 
	<br></br>
	Bestwert Rebounds: <xsl:apply-templates/>
	<br></br>
	Bestwert Assists:
</xsl:template>

<!--<xsl:variable name="maxPunkte">
	  <xsl:for-each select="/Report/Items/Item/*[starts-with(local-name(), 'Hour')]">
		<xsl:sort select="." data-type="number" order="descending"/>
		<xsl:if test="position() = 1"><xsl:value-of select="."/></xsl:if>
	  </xsl:for-each>
	</xsl:variable>
	
	<xsl:variable name="Punkte">
		<value-of select="/tr/tc/p/r/t"/>
	</xsl:variable>-->
</xsl:stylesheet>