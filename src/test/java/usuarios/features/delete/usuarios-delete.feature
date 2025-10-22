Feature: Eliminar usuario

  Background:
    Given url baseUrl

@happypath @eliminarUsuario @gian.leiva
  Scenario: Excluir un usuario del sistema
    And path 'usuarios/' + 'xSNAppZin0GyZexu'
    When method delete
    Then status 200
    And match response.message == 'Nenhum registro excluído'
    And print response

@unhappypath @eliminarUsuario @gian.leiva
Scenario: Restriccion al intentar eliminar un usuario con carrito
    And path 'usuarios/' + '0uxuPY0cbmQhpEz1'
    When method delete
    Then status 400
    And match response.message == 'Não é permitido excluir usuário com carrinho cadastrado'