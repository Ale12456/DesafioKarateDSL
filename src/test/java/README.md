# Automatización de Pruebas API Usuarios - Karate DSL

## Descripción

Este proyecto contiene pruebas automatizadas para la API de Usuarios utilizando **Karate DSL** y **JUnit 5**. Permite validar el correcto funcionamiento de los endpoints de usuarios, cubriendo operaciones de listado, creación, actualización y eliminación, tanto en escenarios positivos como negativos. Además, incluye validaciones de esquema JSON para asegurar la integridad de las respuestas.

---

## Requisitos previos

- **Java JDK 8** o superior
- **Maven** (gestor de dependencias y ejecución)
- **IntelliJ IDEA** (recomendado, pero puedes usar cualquier IDE compatible con Java)
- **Plugins recomendados para IntelliJ**:
    - `Cucumber for Java`: soporte para archivos `.feature`
    - `Gherkin`: resaltado de sintaxis y autocompletado

---

## Estructura del proyecto# Automatización de Pruebas API Usuarios - Karate DSL

## Descripción
Este proyecto implementa pruebas automatizadas para la API de Usuarios utilizando Karate DSL y JUnit 5.  
Se incluyen escenarios CRUD: listado, creación, actualización y eliminación de usuarios, cubriendo casos positivos y negativos, así como validaciones de esquema JSON en escenarios seleccionados.

---

## Requisitos previos
- Java JDK 8
- Maven
- IDE recomendado: IntelliJ IDEA
- Plugins de IntelliJ recomendados:
    - **Cucumber for Java** → soporte para archivos `.feature`
    - **Gherkin** → resaltado de sintaxis y autocompletado

---

## Estructura del proyecto

- src
    - test
        - java
            - usuarios
                - features
                    - get
                        - usuarios-get.feature
                    - post
                        - usuarios-post.feature
                    - put
                        - usuarios-put.feature
                    - delete
                        - usuarios-delete.feature
                - helpers
                    - dataAleatoria.js
                - request
                    - requestUser.json
                    - requestUpdateUser.json
                - runner
                    - UsuariosRunner
                - schema
                    - usuarioSchema.json



- **features**: Archivos `.feature` con los escenarios de prueba (Gherkin).
- **helpers**: Scripts de apoyo, como generación de datos aleatorios.
- **request**: Plantillas JSON para las peticiones.
- **runner**: Clases Java para ejecutar las pruebas.
- **schema**: Esquemas JSON para validar las respuestas.

---

## ¿Cómo ejecutar las pruebas?

1. Clona este repositorio en tu máquina local con el siguiente comando:
   ```bash
   git clone <https://github.com/Ale12456/desafioKarateDSL.git>
   ```
2. Abre el proyecto en IntelliJ IDEA.
3. Ejecuta el siguiente comando en la terminal del proyecto:
    ```bash
    mvn clean test -Dtest=UsuariosRunner
    ```

4. Los resultados aparecerán en la consola y en los reportes generados por Karate.
5. Revisa los reportes generados en la carpeta `target/karate-reports` para detalles de las ejecuciones.

---

## ¿Cómo agregar nuevos escenarios?

1. Crea o edita un archivo `.feature` en la carpeta correspondiente dentro de `features`.
2. Usa el lenguaje Gherkin para describir el escenario.
3. Si necesitas datos nuevos, agrégalos en los archivos de `request` o `helpers`.
4. Ejecuta las pruebas para validar que todo funcione correctamente.

---

## Recursos útiles

- [Documentación oficial de Karate DSL](https://karatelabs.github.io/karate/)
- [Guía de Gherkin](https://cucumber.io/docs/gherkin/)

---

## Contacto

Para dudas o sugerencias, contacta al equipo de QA o al responsable del repositorio.