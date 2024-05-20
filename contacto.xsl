<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <head>
      <title>Perfil de Animal</title>
      <style>
        table {
          width: 50%;
          border-collapse: collapse;
          margin-top: 20px;
        }
        th, td {
          border: 1px solid black;
          padding: 8px;
          text-align: left;
        }
        th {
          background-color: #f2f2f2;
        }
      </style>
    </head>
    <body>
      <h1>Perfil de Animal</h1>
      <table>
        <tr>
          <th>ID</th>
          <td><xsl:value-of select="/hola/animal/@id"/></td>
        </tr>
        <tr>
          <th>Nombre</th>
          <td><xsl:value-of select="/hola/animal/@nombre"/></td>
        </tr>
        <tr>
          <th>Especie</th>
          <td><xsl:value-of select="/hola/animal/@especie"/></td>
        </tr>
        <tr>
          <th>Descripción</th>
          <td><xsl:value-of select="/hola/animal/descripcion"/></td>
        </tr>
        <tr>
          <th>Hábitat ID</th>
          <td><xsl:value-of select="/hola/animal/habitat_ref/@id"/></td>
        </tr>
      </table>
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>