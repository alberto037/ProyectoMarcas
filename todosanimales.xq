<infoAnimales>{
  for $animal in doc("zoo.xml")//animal
  return
    <animal>
      <id>{$animal/@id}</id>
      <nombre>{$animal/@nombre}</nombre>
      <especie>{$animal/@especie}</especie>
      <descripcion>{$animal/descripcion/text()}</descripcion>
    </animal>
}</infoAnimales>
