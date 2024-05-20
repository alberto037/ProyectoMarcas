<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/infoAnimales">
    <html lang="es">
      <head>
        <title>Lista de Animales</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
        <style>
          .animal-container {
            margin-top: 20px;
          }
          .animal-item {
            margin-bottom: 10px;
          }
          .btn {
            margin-right: 5px;
          }
        </style>
      </head>
      <body>
        <div class="container-fluid">
          <h1 class="text-center">Lista de Animales</h1>
          <div class="animal-container">
            <xsl:apply-templates select="animal"/>
          </div>
          <a class='btn btn-primary mt-3' href='anadir.html'>Agregar Nuevo Animal</a>
        </div>
      </body>
    </html>
  </xsl:template>
 
  <xsl:template match="animal">
    <div class="animal-item">
      <a href="contacto.php?id={id/@id}" class="btn btn-info">
        <xsl:value-of select="nombre/@nombre"/>
      </a>
      <a href="?id={id/@id}" class="btn btn-danger">Borrar</a>
    </div>
  </xsl:template>
</xsl:stylesheet>