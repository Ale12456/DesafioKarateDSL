Feature: Registrar usuario

  Background:
    Given url baseUrl
    And def helper = call read('classpath:usuarios/helpers/dataAleatoria.js')


  @happypath @registrarUsuario @gian.leiva
  Scenario: Registrar un nuevo usuario
    And def body = read('classpath:usuarios/request/requestUser.json')
    And set body.email = helper.generarEmail()
    And path 'usuarios'
    And request body
    When method post
    Then status 201
    And match response.message == 'Cadastro realizado com sucesso'
    And match response._id != null
    And print response

  @unhappypath @registrarUsuario @gian.leiva
  Scenario: Error al registrar usuario con email ya existente
    And path 'usuarios'
    And request read('classpath:usuarios/request/requestUser.json')
    When method post
    Then status 400
    And match response.message == 'Este email já está sendo usado'

  @unhappypath @registrarUsuario @gian.leiva
  Scenario: Error al registrar usuario con email vacio
    And def body = read('classpath:usuarios/request/requestUser.json')
    And set body.email = ''
    And path 'usuarios'
    And request body
    When method post
    Then status 400
    And match response.email == 'email não pode ficar em branco'
