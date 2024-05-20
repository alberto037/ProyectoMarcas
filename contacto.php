<?php

$id=$_GET['id'];

require_once("config.php");
$contents = REST_PATH . "/db/proyectozoo/animales.xq?id=$id";
$result = file_get_contents($contents);

// Load the XML source
$xml = new DOMDocument;
$xml->loadXML($result);

$xsl = new DOMDocument;
$xsl->load('contacto.xsl');

// Configure the transformer
$proc = new XSLTProcessor;
$proc->importStyleSheet($xsl); // attach the xsl rules

echo $proc->transformToXML($xml);
?>