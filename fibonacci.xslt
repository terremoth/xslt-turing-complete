<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Fibonacci Sequence</title>
            </head>
            <body>
                <h1>Fibonacci Sequence</h1>
                <p>
                    <xsl:call-template name="fibonacci">
                        <xsl:with-param name="n" select="/input/@n" />
                    </xsl:call-template>
                </p>
            </body>
        </html>
    </xsl:template>

    <xsl:template name="fibonacci">
        <xsl:param name="n" />
        <xsl:param name="prev" select="0" />
        <xsl:param name="curr" select="1" />

        <xsl:if test="$n > 0">
            <xsl:value-of select="$curr" />
            <xsl:text>, </xsl:text>
            <xsl:call-template name="fibonacci">
                <xsl:with-param name="n" select="$n - 1" />
                <xsl:with-param name="prev" select="$curr" />
                <xsl:with-param name="curr" select="$prev + $curr" />
            </xsl:call-template>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
