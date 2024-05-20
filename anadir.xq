xquery version "3.1";
declare namespace request = "http://exist-db.org/xquery/request";
update insert request:get-data() into doc("zoo.xml")/zoo/animales
