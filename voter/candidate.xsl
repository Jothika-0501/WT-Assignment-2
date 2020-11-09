<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h2>CANDIDATE LIST</h2>
    <table border="1">
      <tr bgcolor="#b30000">
        <th>Name</th>
        <th>Gender</th>
        <th>Department</th>
        <th>Year</th>
        <th>Category</th>
        <th>No of Votes</th>
      </tr>
      <xsl:for-each select="candidate/cand">
      <xsl:sort select="name"/>
      <tr>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="gender"/></td>
        <td><xsl:value-of select="dept"/></td>
        <td><xsl:value-of select="year"/></td>
        <td><xsl:value-of select="category"/></td>
        <td><xsl:value-of select="votes"/></td>  
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>