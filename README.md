# UpgradeSystem-Sro

## Sistema de Upgrade para Silkroad

Este proyecto proporciona un sistema de upgrade para Silkroad Online que permite a los jugadores intercambiar ítems por otros utilizando un scroll específico para cada tipo de ítem. Este sistema abarca diferentes tipos de equipo, como armaduras, escudos y armas, y permite realizar upgrades de ítems entre diferentes grados (degree) o entre diferentes tipos de SOX, dependiendo del plus (+) que tenga el ítem.

## Características Principales

**Intercambio de Ítems:** El sistema permite intercambiar un ítem por otro utilizando un scroll especial. Hay scrolls específicos para cada tipo de ítem (armadura, escudo, arma), lo que garantiza que el jugador pueda mejorar su equipo de manera eficiente.

**Upgrade entre Degree y SOX:** Los jugadores pueden realizar upgrades de ítems entre diferentes grados (degrees) o entre diferentes tipos de SOX, siempre que el ítem cumpla con los requisitos de plus (+) especificados dependiendo de los ítems recogidos en la tabla.

**Control de Plus:** El sistema permite configurar el plus necesario para el upgrade de un ítem. Esto puede utilizarse para incrementar o disminuir la dificultad del upgrade dependiendo de la rareza o poder del ítem específico.

**Columna de Servicio:** Se incluye una columna de servicio en la base de datos que permite desactivar el upgrade de un ítem específico. Esto es útil para evitar upgrades no deseados o deshabilitar temporalmente el upgrade de ciertos ítems.

## Estructura del Proyecto

Este repositorio incluye varios archivos y scripts esenciales para la implementación del sistema de upgrade:

### Consultas SQL:

- **Creación de Tablas:** Consultas SQL para crear las tablas necesarias en la base de datos.
- **Recolección de Ítems:** Consultas para recolectar y organizar los ítems que serán utilizados en el sistema de upgrade.
- **AddLogItem:** Consulta para integrar el sistema de logs del juego.
- **Procedimientos Almacenados:** Procedimiento almacenado que encapsula la lógica del sistema de upgrade para ejecutarse de manera clara y eficiente en la base de datos.

## Instalación

**Implementa el Procedimiento Almacenado:** Asegúrate de que el procedimiento almacenado esté correctamente implementado y configurado para ejecutarse según sea necesario.

**Configura los Scrolls:** Define los scrolls específicos que permitirán realizar el upgrade de los diferentes tipos de ítems (armaduras, escudos, armas).

**Ajusta los Requisitos de Plus:** Configura los requisitos de plus para cada tipo de ítem, dependiendo de la dificultad deseada para el upgrade.

### Uso

**Realizar un Upgrade:** Los jugadores pueden utilizar los scrolls específicos para intentar realizar upgrades en sus ítems. Dependiendo de la configuración, el upgrade puede cambiar el grado o el tipo de SOX del ítem.

**Administrar el Sistema:** Los administradores pueden desactivar upgrades específicos utilizando la columna de servicio, y ajustar los requisitos de plus según sea necesario para mantener el balance del juego.

### Contribuciones

Las contribuciones son bienvenidas. Si encuentras algún problema o tienes alguna sugerencia para mejorar el sistema, no dudes en abrir un issue o enviar un pull request.

---

Este **README** proporciona una descripción clara del sistema de upgrade, cómo funciona, y cómo implementarlo en el entorno de Silkroad. También incluye instrucciones para la instalación y uso, lo que debería facilitar a otros la integración y utilización del sistema.
