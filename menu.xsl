<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <style>
          body {
            font-family: Arial, sans-serif;
          }
          .food-block {
            background-color: #007B7F;
            color: white;
            padding: 8px;
            font-weight: bold;
           
          }
          .food-description {
            background-color: #f9f9f9;
            padding: 8px;
            padding: 20px;
            font-size: 14px;
            color: black;


          }
          h2 {
            margin-top: 30px;
            color: #007B7F;
          }
        </style>
      </head>
      <body>

        <!-- Section B: Price > $5.00 -->
        <h2>Food whose price is greater than $5.00</h2>
        <xsl:for-each select="breakfast_menu/food">
          <xsl:if test="number(translate(price, '$', '')) &gt; 5.00">
            <div class="food-block">
              <xsl:value-of select="name"/> - <xsl:value-of select="price"/>
            </div>
            <div class="food-description">
              <xsl:value-of select="description"/>
              (<xsl:value-of select="calories"/> calories per serving)
            </div>
          </xsl:if>
        </xsl:for-each>

        <!-- Section C: Calories <= 700 -->
        <h2>Food whose calorie does not exceed 700 cal.</h2>
        <xsl:for-each select="breakfast_menu/food">
          <xsl:if test="calories &lt;= 700">
            <div class="food-block">
              <xsl:value-of select="name"/> - <xsl:value-of select="price"/>
            </div>
            <div class="food-description">
              <xsl:value-of select="description"/>
              (<xsl:value-of select="calories"/> calories per serving)
            </div>
          </xsl:if>
        </xsl:for-each>

      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
