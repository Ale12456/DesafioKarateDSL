Feature: Actualizacion de usuarios

  Background:
    Given url baseUrl

  @happypath @actualizarUsuario @gian.leiva
  Scenario: Actualizar usuario que existe
    And path 'usuarios/' + 'OKQGmXiMypxv40wG'
    And request read ('classpath:usuarios/request/requestUpdateUser.json')
    When method put
    Then status 200
    And match response.message == 'Registro alterado com sucesso'
    And print response

  @unhappypath @actualizarUsuario @gian.leiva
  Scenario:Actualizar usuario con email ya existente
    And path 'usuarios/' + '0uxuPY0cbmQhpEz1'
    And request
    """
    {
      "nome": "T",
      "email": "beltrano@qa.com.br",
      "password": "teste",
      "administrador": "true"
    }
    """
    When method put
    Then status 400
    And match response.message == 'Este email já está sendo usado'

