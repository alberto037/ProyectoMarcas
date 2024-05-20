xquery version "3.1";
let $id := request:get-parameter("id", "0")
return
    update delete doc("zoo.xml")//zoo/animales/animal[@id=$id]