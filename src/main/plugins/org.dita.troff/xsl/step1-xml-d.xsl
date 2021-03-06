<?xml version="1.0" encoding="UTF-8" ?>
<!-- This file is part of the DITA Open Toolkit project.
  See the accompanying license.txt file for applicable licenses.-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="2.0">
  
  <xsl:template match="*[contains(@class,' xml-d/numcharrer ')]">
    <text style="tt"><xsl:call-template name="commonatts"/>
      <xsl:text>&amp;#</xsl:text>  
      <xsl:apply-templates/>
      <xsl:text>;</xsl:text>
    </text>
  </xsl:template>
  
  <xsl:template match="*[contains(@class,' xml-d/parameterentity ')]">
    <text style="tt"><xsl:call-template name="commonatts"/>
      <xsl:text>%</xsl:text>  
      <xsl:apply-templates/>
      <xsl:text>;</xsl:text>
    </text>
  </xsl:template>
  
  <xsl:template match="*[contains(@class,' xml-d/textentity ')]">
    <text style="tt"><xsl:call-template name="commonatts"/>
      <xsl:text>&amp;</xsl:text>  
      <xsl:apply-templates/>
      <xsl:text>;</xsl:text>
    </text>
  </xsl:template>
  
  <xsl:template match="*[contains(@class,' xml-d/xmlelement ')]">
    <text style="tt"><xsl:call-template name="commonatts"/>
      <xsl:text>&lt;</xsl:text>  
      <xsl:apply-templates/>
      <xsl:text>&gt;</xsl:text>
    </text>
  </xsl:template>

  <xsl:template match="*[contains(@class,' xml-d/xmlatt ')]">
    <text style="tt"><xsl:call-template name="commonatts"/>
      <xsl:text>@</xsl:text>  
      <xsl:apply-templates/>
    </text>
  </xsl:template>
  
  <xsl:template match="*[contains(@class,' xml-d/xmlnsname ')]">
    <text style="tt"><xsl:call-template name="commonatts"/>
      <xsl:apply-templates/>
    </text>
  </xsl:template>

  <xsl:template match="*[contains(@class,' xml-d/xmlpi ')]">
    <text style="tt"><xsl:call-template name="commonatts"/>
      <xsl:apply-templates/>
    </text>
  </xsl:template>

</xsl:stylesheet>
