Feature: Consultar el listado de usuarios


  Background:
    Given url baseUrl
    And def schema = read('classpath:usuarios/schema/usuarioSchema.json')

  @happypath @listarUsuarios @gian.leiva
  Scenario Outline: Consultar listado de usuarios
    And path 'usuarios'
    When method get
    Then status <status>
    And print response
    Examples:
      | status |
      | 200    |

  @happypath @listarUsuarios @gian.leiva
  Scenario: Consultar un usuario por id que existe
    And path 'usuarios/' + '0uxuPY0cbmQhpEz1'
    When method get
    Then status 200
    And match response == schema
    And match response.nome == 'T'
    And match response.email == 'beltrano@qa.com.br'
    And print response

  @unhappypath @listarUsuarios @gian.leiva
  Scenario: Consultar un usuario por id que no existe
    And path 'usuarios/' + '3lRbIAGfPGcpPISE'
    When method get
    Then status 400
    And match response ==
   """
   { "message": "Usuário não encontrado" }
   """
    And print response