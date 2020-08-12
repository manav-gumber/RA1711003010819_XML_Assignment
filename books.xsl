<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">  <!-- Ns is namespace and we passed a unifrom resource identifier i.e w3 org-->
<xsl:template match="/">  <!--making a template and match is using path to reach child node-->
<html>

 <head>
 <title> books</title></head>

 <h2>Books Information</h2>
 <body>
 <table border="1" bgcolor="pink">

 <tr bgcolor="brown" >
 <th>Title</th>
 <th> Author_name </th>
 <th> Genre </th>
 <th> CopyrightYear </th>
 <th> BookEdition </th>
 <th> ISBNNumber</th>
 <th>PublisherName</th>
 <th>BookPrice</th>
 </tr>

<xsl:for-each select="books/book">
<tr>
<td bgcolor="pink"><xsl:value-of select="Title"/></td>
<td bgcolor="darkblue" ><b><xsl:value-of select="Author_name"/></b></td>
<td bgcolor="pink"><xsl:value-of select="Genre"/></td>
<td bgcolor="lightgreen"><xsl:value-of select="CopyrightYear"/></td>
<td bgcolor="pink"><xsl:value-of select="BookEdition" /></td>
<td bgcolor="wheat"><xsl:value-of select="ISBNNumber" /></td>
<td bgcolor="pink"><xsl:value-of select="PublisherName"/></td>
<td bgcolor="white"><xsl:value-of select="BookPrice" /></td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet> 