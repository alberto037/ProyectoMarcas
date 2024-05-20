<hola>{
let $id := request:get-parameter("id", "a0")
let $a := doc("zoo.xml")//animal[@id=$id]
return $a
}</hola>