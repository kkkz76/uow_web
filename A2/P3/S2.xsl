<?xml version="1.0"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml">

    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>


    <xsl:template match="/forecast">
        <html>
        <style>
        
            td {
                width: 150px;}
            img{
                height: 50px;
                width: 50px;
            }
            p{
                margin: 0;
                padding: 0;
            }

        </style>
            <head>
                <title>A2T1G05</title>
            </head>
            <body>
                <h1> <xsl:value-of select="@queryLocation" /> [ <xsl:value-of select="@queryTime" />]</h1>
                <table border="1" >
                    <tr bgcolor="yellow" align="center" height="30px">
                        <th>Date</th>
                        <th>Mon</th>
                        <th>Tue</th>
                        <th>Wed</th>
                        <th>Thu</th>
                        <th>Fri</th>
                        <th>Sat</th>
                        <th>Sun</th>
                    </tr>
                    <xsl:for-each select="weather">
                        
                        <xsl:sort select="@yyyymmdd" order="descending" data-type="text"/>
                        <tr>
                            <td bgcolor="yellow" style="width:60px" align="center">
                                <xsl:value-of select="date" />
                                <xsl:text> </xsl:text>
                                <xsl:choose>
                                <xsl:when test="month='4'">
                                <xsl:text>Apr</xsl:text>
                                </xsl:when>
                                <xsl:when test="month='5'">
                                <xsl:text>May</xsl:text>
                                </xsl:when>
                                <xsl:when test="month='6'">
                                <xsl:text>Jun</xsl:text>
                                </xsl:when>
                                <xsl:when test="month='7'">
                                <xsl:text>July</xsl:text>
                                </xsl:when>
                                </xsl:choose> 
                            </td>
                            <xsl:choose>               
                                <xsl:when test="dayOfWeek = 'Tue'">
                                    <td class="wide"><xsl:text> </xsl:text></td>
                                </xsl:when>
                                <xsl:when test="dayOfWeek = 'Wed'">
                                    <td><xsl:text> </xsl:text></td>
                                    <td><xsl:text> </xsl:text></td>
                                </xsl:when>
                                <xsl:when test="dayOfWeek = 'Thu'">
                                    <td><xsl:text> </xsl:text></td>
                                    <td><xsl:text> </xsl:text></td>
                                    <td><xsl:text> </xsl:text></td>
                                </xsl:when>
                                <xsl:when test="dayOfWeek = 'Fri'">
                                    <td><xsl:text> </xsl:text></td>
                                    <td><xsl:text> </xsl:text></td>
                                    <td><xsl:text> </xsl:text></td>
                                    <td><xsl:text> </xsl:text></td>
                                </xsl:when>
                                <xsl:when test="dayOfWeek = 'Sat'">
                                    <td><xsl:text> </xsl:text></td>
                                    <td><xsl:text> </xsl:text></td>
                                    <td><xsl:text> </xsl:text></td>
                                    <td><xsl:text> </xsl:text></td>
                                    <td><xsl:text> </xsl:text></td>
                                </xsl:when>
                                <xsl:when test="dayOfWeek = 'Sun'">
                                    <td><xsl:text> </xsl:text></td>
                                    <td><xsl:text> </xsl:text></td>
                                    <td><xsl:text> </xsl:text></td>
                                    <td><xsl:text> </xsl:text></td>
                                    <td><xsl:text> </xsl:text></td>
                                    <td><xsl:text> </xsl:text></td>
                                </xsl:when>
                            </xsl:choose>

                            <td align="center" >
                            <xsl:value-of select="lowest" />
                                    <xsl:text>°C - </xsl:text>
                                    <xsl:value-of select="highest" />
                                    <xsl:text>°C</xsl:text>
                          
                            
                            <br/>
                            <img>
                                <xsl:attribute name="src">
                                    <xsl:text>images/</xsl:text>
                                    <xsl:value-of select="overallCode"/>
                                    <xsl:text>.png</xsl:text>
                                </xsl:attribute>
                            </img>
                               
                            <xsl:choose>
                            <xsl:when test="overallCode = 'cloudy'">
                                    <p style="color:blue">
                                        <xsl:value-of select="overall"/>
                                    </p>
                            </xsl:when>
                            <xsl:when test="(overallCode = 'thunderstorm') or (overallCode = 'rain')">
                                    <p style="color:orange">
                                        <xsl:value-of select="overall"/>
                                    </p>
                            </xsl:when>
                            <xsl:when test="(overallCode = 'sunny') or (overallCode = 'partlySunny')">
                                    <p style="color:red">
                                        <xsl:value-of select="overall"/>
                                    </p>
                            </xsl:when>
                            </xsl:choose>
                            </td>
                            <xsl:choose>
                                <xsl:when test="dayOfWeek = 'Sat'">
                                    <td><xsl:text> </xsl:text></td>
                                </xsl:when>
                                <xsl:when test="dayOfWeek = 'Fri'">
                                    <td><xsl:text> </xsl:text></td>
                                    <td><xsl:text> </xsl:text></td>
                                </xsl:when>
                                <xsl:when test="dayOfWeek = 'Thu'">
                                    <td><xsl:text> </xsl:text></td>
                                    <td><xsl:text> </xsl:text></td>
                                    <td><xsl:text> </xsl:text></td>
                                </xsl:when>
                                <xsl:when test="dayOfWeek = 'Wed'">
                                    <td><xsl:text> </xsl:text></td>
                                    <td><xsl:text> </xsl:text></td>
                                    <td><xsl:text> </xsl:text></td>
                                    <td><xsl:text> </xsl:text></td>
                                </xsl:when>
                                <xsl:when test="dayOfWeek = 'Tue'">
                                    <td><xsl:text> </xsl:text></td>
                                    <td><xsl:text> </xsl:text></td>
                                    <td><xsl:text> </xsl:text></td>
                                    <td><xsl:text> </xsl:text></td>
                                    <td><xsl:text> </xsl:text></td>
                                </xsl:when>
                            </xsl:choose>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>