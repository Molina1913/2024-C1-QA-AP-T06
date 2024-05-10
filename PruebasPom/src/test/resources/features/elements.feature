Feature:

  Background:
    Given El usuario esta en la pagina web de elements demoqa 1

  @webtables
  Scenario Outline: agregar, actualizar y borrar tablas
    When usa el boton de add
    And llena el formulario con <nombre> <apellido> <correo> <edad> <salario> <departamento>
    And actualiza la fila con correo <correoActualizar> a datos random
    And elimina la fila con el correo <correoEliminar>
    Then deberia verse todos los cambios hechos en la tabla
    Examples:
      | nombre  | apellido   | correo              | edad | salario | departamento | correoActualizar     | correoEliminar      |
      | "jorge" | "de neiva" | "jorge@example.com" | 35   | 2000    | "CALIDAD"    | "cierra@example.com" | "alden@example.com" |