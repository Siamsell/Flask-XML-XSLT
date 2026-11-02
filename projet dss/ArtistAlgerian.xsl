<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Liste des artistes algériens</title>
                <style>
                    body {
                    font-family: Arial, sans-serif;
                    margin: 20px;
                    border: 5px solid black;
                    padding: 13px;
                    }
                    h1 {
                    font-size: 24px;
                    font-weight: bold;
                    }
                    h2 {
                    color: red;
                    font-weight: bold;
                    font-size: 20px;
                    }
                    h3 {
                    font-size: 16px;
                    }
                    a {
                    color: blue;
                    text-decoration: underline;
                    font-weight: bold;
                    }
                    table {
                    border-collapse: collapse;
                    width: 50%;
                    margin-top: 10px;
                    }
                    th, td {
                    border: 1px solid green;
                    padding: 8px;
                    text-align: left;
                    }
                    th {
                    background-color: lightgray;
                    font-weight: bold;
                    }
                    .header {
                    font-size: 14px;
                    text-align: center;
                    margin-bottom: 20px;
                    }
                </style>
            </head>
            <body>
                <div class="header">
                    <p>Cette page est réalisée par les étudiants : <b>Bedj bedj Fatma Zohra, Sellami Sihem, Saidani Ikram</b>. Groupe : <b>SI 01</b></p>
                </div>
                
                <h1>Ma liste d'artistes</h1>
                <xsl:apply-templates select="artists/artist"/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="artist">
        <div style="margin-bottom: 30px;">
            <h2>NOM: <xsl:value-of select="name"/></h2>
            <h3>Ville: <xsl:value-of select="city"/></h3>
            
            <!-- Vérification si le site existe avant de l'afficher -->
            <xsl:if test="website">
                <h3>Site: <a href="{website}"><xsl:value-of select="website"/></a></h3>
            </xsl:if>
            
            <!-- Vérification si l'artiste a des albums avant d'afficher le tableau -->
            <xsl:if test="albums/album">
                <h3>Productions</h3>
                <table>
                    <tr>
                        <th>NOM Album</th>
                        <th>Genre</th>
                        <th>Chanson</th>
                    </tr>
                    <xsl:for-each select="albums/album">
                        <tr>
                            <td><xsl:value-of select="title"/></td>
                            <td><xsl:value-of select="genre"/></td>
                            <td><xsl:value-of select="tracklist"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </xsl:if>
        </div>
    </xsl:template>
</xsl:stylesheet>