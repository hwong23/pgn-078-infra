---
keywords:
- SOA
- madurez
- gobierno
- PGN
lang: en-US
date-meta: '2023-10-22'
author-meta:
- Harry Wong, ing.
header-includes: |
  <!--
  Manubot generated metadata rendered from header-includes-template.html.
  Suggest improvements at https://github.com/manubot/manubot/blob/main/manubot/process/header-includes-template.html
  -->
  <meta name="dc.format" content="text/html" />
  <meta property="og:type" content="article" />
  <meta name="dc.date" content="2023-10-22" />
  <meta name="citation_publication_date" content="2023-10-22" />
  <meta property="article:published_time" content="2023-10-22" />
  <meta name="dc.modified" content="2023-10-22T19:19:16+00:00" />
  <meta property="article:modified_time" content="2023-10-22T19:19:16+00:00" />
  <meta name="dc.language" content="en-US" />
  <meta name="citation_language" content="en-US" />
  <meta name="dc.relation.ispartof" content="Manubot" />
  <meta name="dc.publisher" content="Manubot" />
  <meta name="citation_journal_title" content="Manubot" />
  <meta name="citation_technical_report_institution" content="Manubot" />
  <meta name="citation_author" content="Harry Wong, ing." />
  <meta name="citation_author_institution" content="Arquitecto, Softgic" />
  <link rel="canonical" href="https://hwong23.github.io/pgn-078-infra/" />
  <meta property="og:url" content="https://hwong23.github.io/pgn-078-infra/" />
  <meta property="twitter:url" content="https://hwong23.github.io/pgn-078-infra/" />
  <meta name="citation_fulltext_html_url" content="https://hwong23.github.io/pgn-078-infra/" />
  <meta name="citation_pdf_url" content="https://hwong23.github.io/pgn-078-infra/manuscript.pdf" />
  <link rel="alternate" type="application/pdf" href="https://hwong23.github.io/pgn-078-infra/manuscript.pdf" />
  <link rel="alternate" type="text/html" href="https://hwong23.github.io/pgn-078-infra/v/5a1a74c99bd7f2dbde8ee371089f1ac03fc60a47/" />
  <meta name="manubot_html_url_versioned" content="https://hwong23.github.io/pgn-078-infra/v/5a1a74c99bd7f2dbde8ee371089f1ac03fc60a47/" />
  <meta name="manubot_pdf_url_versioned" content="https://hwong23.github.io/pgn-078-infra/v/5a1a74c99bd7f2dbde8ee371089f1ac03fc60a47/manuscript.pdf" />
  <meta property="og:type" content="article" />
  <meta property="twitter:card" content="summary_large_image" />
  <link rel="icon" type="image/png" sizes="192x192" href="https://manubot.org/favicon-192x192.png" />
  <link rel="mask-icon" href="https://manubot.org/safari-pinned-tab.svg" color="#ad1457" />
  <meta name="theme-color" content="#ad1457" />
  <!-- end Manubot generated metadata -->
bibliography:
- content/manual-references.bib
- content/manual-references.json
manubot-output-bibliography: output/references.json
manubot-output-citekeys: output/citations.tsv
manubot-requests-cache-path: ci/cache/requests-cache
manubot-clear-requests-cache: false
...

---
title: Documento de Arquitectura Migración Funcional PGN SIU
subtitle: OP 078-2023 - Fase 2, PGN Migración Funcional SIU
geometry:
  - top=1in
  - bottom=1in
fignos-cleveref: True
fignos-plus-name: Fig.
fignos-caption-name: Imagen
tablenos-caption-name: Tabla
...


<br>

<br>

<br>

<br>

<br>

<br>

| **Versión** del producto 1.5a1a74c de 22 Oct 2023

| **Presentado a**

| Procuraduría General de la Nación (PGN)

|

| **Fecha**

| 22 Oct 2023


<div style="page-break-before: always;"></div>
\newpage


<small><em>Los productos de esta etapa, Migración Funcional SIU, Contrato 078-2023, 
([Web](https://hwong23.github.io/pgn-078-infra/v/5a1a74c99bd7f2dbde8ee371089f1ac03fc60a47/))
están basados en el resultado de la Fase 1 del proyecto PGN SIU del 2022,
[Sharepoint Softgic@5a1a74c](http://softgic.sharepoint.com)
del October 22, 2023.
</em></small>





<br>

## Autores



+ **Harry Wong, ing.**
  <br>
    · ![Usuario](images/github.svg){.inline_icon width=16 height=16}
    [e_hwong](https://github.com/e_hwong)
    <br>
  <small>
     Arquitecto, Softgic
  </small>


::: {#correspondence}
✉ — Enviar mensajes a Harry Wong, ing. \<harry.wong@softgic.co\>.


:::

<br>



## Objetivo del Documento
Descripción de los productos del trabajo de arquitectura de la Fase 2, proyecto Migración Funcional SIU de la Procuraduría General de la Nación (PGN en adelante), Contrato 078-2023. El principal propósito de este documento es informar de las decisiones sobre la disposición lógica y física de las partes del sistema. Por tanto, el documento contiene información estratégica, no un diseño detallado. Puntualmente, refleja decisiones sobre la plataforma tecnológica seleccionada, así como consideraciones importantes para el diseño y desarrollo, con procura de garantizar una solución técnicamente viable y óptima para el proyecto.


<br>

##  Control de Cambios {.page_break_before}
| Tema           | OP 078-2023 Fase 2, PGN Migración Funcional SIU      |
|----------------|----------------------------|
| Palabras clave | SIU, Softgic, PGN, Análisis de brecha, GAP, Comparativa |
| Autor          |                            |
| Fuente         |                            |
| Versión        |                            |
| 1.5a1a74c | 2023-10-22. histr3 |
| 1.13c5f29 | 2023-10-22. histr2 |
| 1.7e6a6e7 | 2023-10-22. histr1 |
| 1.50977db | 2023-10-19. upd |
| 1.809e99c | 2023-09-14. pndc |
| 1.5b064f0 | 2023-09-14. build |
| 1.f43cdd8 | 2023-09-14. archidoc |
| 1.50b4bf6 | 2023-09-14. archicli |
| 1.20f6d17 | 2023-09-14. archicli |
| 1.25f03ae | 2023-09-14. dd |˝
| Vínculos       | [N003a Vista Segmento PGN SIU](N03a%a20Vsta%20aSegenta%20SOA%20PGN.md) |

<br>

<br>

<div style="page-break-before: always;"></div>
\newpage




## Contenidos
\toc

<br>

<div style="page-break-before: always;"></div>
\newpage



# Introducción

## Propósito
Este documento tiene como propósito presentar la arquitectura del aplicativo Sistema Único de Información (SUI) para Procuraduría General de la Nación (PGN). según los requerimientos definidos durante la etapa de preventa y luego detallados en las historias de usuario.

La arquitectura será una guía para que el diseño y la implementación de los componentes que conforman la solución sean cobijados bajo lineamientos y premisas bien definidos, permitiendo a los elementos del sistema interactuar entre sí de forma coherente. La arquitectura será tomada como un diseño estratégico que establece restricciones globales para el diseño, define un marco inicial de trabajo para la implementación de los requerimientos funcionales y no funcionales.

La definición arquitectónica de este proyecto será un proceso evolutivo como tal. Este documento puede ser susceptible a cambios a medida que se vayan agregando nuevas funcionalidades o requisitos al sistema.

Uno de los principales propósitos de este documento es hacer una representación de las decisiones de disposición lógica y física de las partes del sistema; por tanto, es un diseño estratégico, no un diseño detallado. Puntualmente, refleja decisiones sobre la plataforma tecnológica seleccionada, así como consideraciones importantes para el diseño y desarrollo, con procura de garantizar una solución técnicamente viable y óptima para el proyecto.

<br>

 <div style="page-break-before: always;"></div>
\newpage



# Restricciones Principales
Informamos de las restricciones que hacen parte del proyecto, y por tanto, a considera en el ejercicio de arquitectura del presente proyecto.

Lista de restricciones de la migración SUI, 2023.

1. Restricciones de hardware o software en servidores. Los equipos de infraestructura del proyecto actual a tener en cuenta en los diseños de la solución de esta Fase 2 serán los mismos de la anterior Fase 1. Esto es, los que están descritos en el anexo técnico del contrato del proyecto.
1. Disponibilidad de recursos. Los recursos de implementación y validación de calidad de esta Fase del proyecto son los mismos a tener en cuenta en los diseños de la solución de esta Fase 2. Otros recursos a considerar son los descritos en el anexo técnico del contrato del proyecto.
1. Estándares. Los estándares seleccionados por la solución de este proyecto, (Fase 2, PGN Migración Funcional SIU, están determinados por el uso de las plataformas específicas determinadas por la implementación (desarrollo del software).
1. Requerimientos de interoperabilidad. Los recursos de interoperabilidad y colaboración entre sistemas, módulos, submódulos y aplicaciones de terceros relacionados con esta Fase del proyecto son los mismos a tener en cuenta en los diseños de la solución de esta Fase 2. Otros recursos a considerar son los descritos en el anexo técnico del contrato del proyecto.
1. Requerimientos de protocolos o interfaces. Los recursos de red, y protocolos de comunicación o transporte de esta Fase del proyecto a tener en cuenta en los diseños de la solución de esta Fase 2 parten de la base de los considerados en la anterior Fase 1. Otros recursos a considerar son los descritos en el anexo técnico del contrato del proyecto.
1. Seguridad. Las restricciones de seguridad del proyecto actual a tener en cuenta en los diseños de la solución de esta Fase 2 parten de la base de las de la anterior Fase 1. Esto es, los que están descritos en el anexo técnico del contrato del proyecto.

<br>

## Restricciones Secundarias
Otras restricciones a detallar.

1. Repositorio de datos.
1. Memoria, disco, CPU.
1. Requerimientos de rendimiento.

<br>


# Requisitos de Arquitectura (no funcional)
Entendemos como requisitos de arquitectura aquellos requerimientos no visibles pero estructurales, medibles, y que impactan al funcionamiento, desarrollo y mantenimiento de la solución migración SUI, objeto de este proyecto, OP 078-2023.
 
Definiremos estos requisitos de la solución a tener en cuenta al momento del desarrollo.

## Requerimientos generales
1. **Parametrización**. Crear desarrollos parametrizables necesarios para permitir la administración de la información de uso general.
1. **Interoperabilidad**. Crear desarrollos de SUI interoperables con otros sistemas de información de la entidad según requerimientos de los procesos.
1. **Diseño**. Los desarrollos complementarios deben responder a los criterios de bajo acoplamiento y alta cohesión.
1. **Reglas de negocio**. Las soluciones deben disponer de todas las validaciones y controles que garanticen la calidad, seguridad y unicidad de la información.
1. Para los casos que aplique, la solución debe contar con una integración con el servicio de correo de la Entidad.
1. Todos los desarrollos complementarios serán en su totalidad propiedad de la entidad, para lo cual la entidad podrá modificar y/o actualizar a futuro los procesos modelados, acorde a las necesidades; por tanto, deberán entregarse los derechos intelectuales y patrimoniales como parte de la documentación y el código fuente que corresponda.

<div style="page-break-before: always;"></div>
\newpage


## Requisitos de Arquitectura (no funcional) Particulares

### Extensibilidad SUI
| Requisito      | Extensibilidad SUI |
|----------------|--------------------|
| Descripción | Concentración de los componentes de negocio, misionales, del SUI protegidos de cambios provenientes de otros sistemas. Ver Patrón de Diseño Migración SUI, más adelante en el documento. |
| Calidad sistémica | La extensibilidad que optimiza el diseño Migración SUI está dada por el intercambio de submódulos no misionales, como el gestor documental, sin afectación de los componentes misionales que este diseño protege. |

Table: Requisito no. 1, Migración SUI, Flexibilidad. {#tbl:requisito1-id}

### Mantenibilidad SUI

| Requisito      | Mantenibilidad SUI |
|----------------|--------------------|
| Descripción | Evitar las dependencia transitivas de los módulos misionales del SUI a componentes y sistemas de terceros o submódulos no misionales.  |
| Calidad sistémica | La mantenibilidad por control de dependencias que optimiza el diseño Migración SUI está dada por el control de cambios no programados sobre los componentes misionales del SUI (corrupción de componentes). Ver Patrón de Diseño Migración SUI, más adelante en el documento. |

Table: Requisito no. 2. {#tbl:requisito2-id}



# Arquitectura de Software: Infraestructura
* [Descripción de Infraestructura Migración SUI PGN](#descripción-de-infraestructura-migración-sui-pgn)
	* [Lineabase.1a.SIU componentes. infraestrcutura](#lineabase.1a.siu-componentes.-infraestrcutura)
	* [Lineabase.0.SIU applicación. física](#lineabase.0.siu-applicación.-física)
	* [Seguridad.2. Lineabase.0.SIU Applicación](#seguridad.2.-lineabase.0.siu-applicación)


<div style="page-break-before: always;"></div>
\newpage

# Descripción de Infraestructura Migración SUI PGN
## Lineabase.1a.SIU componentes. infraestrcutura
![Diagram: Lineabase.1a.SIU componentes. infraestrcutura](images/Lineabase.1a.SIUcomponentes.infraestrcutura.png){#fig:Lineabase.1a.SIUcomponentes.infraestrcutura width=}

Dependencias de infraestructura entre los servicios que integran el modelo de aplicación de SUI, Migración. 

* Servidor de Canales (App PGN web y móvil)
* Servidor Web App (App SUI)
* Servidor Lappiz (Config SUI)
* Servidor BDD App (Transaccional)
* Servidor BDD Config (Configuración)



### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Persistencia**|application-collaboration|||
|**App**|application-component||*plataforma:* node Js<br>*brecha:* 100<br>|
|**App PGN Móvil**|application-component|A partir de los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, se realizaran pruebas de seguridad a partir del analisis de vulnerabilidades, y pruebas de Ethikal Hacking. <br>Protección de datos personales, <br>Los sistemas de información que recogen, procesan y almacenan información de los derechos de las personas se deben almacenar de forma adecuada, la información que pueda ser vulnerada puede generar obliaciones legales y éticas con respecto a la perdida de informacion confidencial por parte de ciudadanos del pais. <br>La informacion contenida en las bases de datos debe tener los mecanismos de cifrado que en otros apartados se han mencionado. <br>La legislación que hay que tener como referencia, ley 1581 de 2012. Decreto 1377 de 2013<br>La metodologia empleada tendrá las siguientes fases: <br>•	FASE DE RECONOCIMIENTO: <br>Se recolectará toda la información posible, usando diferentes técnicas como:<br>o	Recopilación de dominios/IPs/puertos/servicios<br>o	Recopilación de metadatos<br>o	Uso de Google Dorks.<br>•	ANÁLSIS DE VULNERABILIDADES: <br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. <br>•	EXPLOTACIÓN: <br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: <br>o	Inyección de código<br>o	Inclusión de ficheros locales o remotos<br>o	Evasión de autenticación<br>o	Carencia de controles de autorización<br>o	Ejecución de comandos en el lado del servidor<br>o	Ataques tipo Cross Site Request Forgery<br>o	Control de errores<br>o	Gestión de sesiones<br>o	Fugas de información<br>o	Secuestros de sesión<br>o	Comprobación de las condiciones para realizar una denegación de servicio.<br>	<br>•	POST EXPLOTACIÓN:<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.<br>No	URL	IP<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz<br>135.181.185.207<br>|*plantilla:* element-md-bold<br>*brecha:* 100<br>|
|**App PGN Web**|application-component|A partir de los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, se realizaran pruebas de seguridad a partir del analisis de vulnerabilidades, y pruebas de Ethical Hacking. <br>Los resultados permitirán identificar los requisitos de seguridad que los sistemas de informacion o servicios web deberán cumplir.<br>La metodologia empleada tendrá las siguientes fases: <br>•	FASE DE RECONOCIMIENTO: <br>Se recolectará toda la información posible, usando diferentes técnicas como:<br>o	Recopilación de dominios/IPs/puertos/servicios<br>o	Recopilación de metadatos<br>o	Uso de Google Dorks.<br>•	ANÁLSIS DE VULNERABILIDADES: <br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. <br>•	EXPLOTACIÓN: <br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: <br>o	Inyección de código<br>o	Inclusión de ficheros locales o remotos<br>o	Evasión de autenticación<br>o	Carencia de controles de autorización<br>o	Ejecución de comandos en el lado del servidor<br>o	Ataques tipo Cross Site Request Forgery<br>o	Control de errores<br>o	Gestión de sesiones<br>o	Fugas de información<br>o	Secuestros de sesión<br>o	Comprobación de las condiciones para realizar una denegación de servicio.<br>	<br>•	POST EXPLOTACIÓN:<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.<br>No	URL	IP<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz<br>135.181.185.207<br>El Login deberá evidenciar el control de errores, al momento de realizar la validación deberá mensaje de error para el caso que se autentique con credenciales erradas. |*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Config**|application-component||*plataforma:* cs<br>|
|**Controlador admin**|application-component||*plataforma:* cs<br>|
|**Controlador frontal mvl**|application-component||*plataforma:* js<br>|
|**Controlador frontal web**|application-component|-	Verificados los SSL, se recomienda adquirir SSL seguros, con entidades certificadoras. <br>Si se desea continuar con SSL de Let's Encrypt, se recomienda automatizar el proceso de actualización dado que al dejar estos en modo actualización manual es probable el olvido de esta actualización (Estos certificados se deben actualizar trimestralmente y no cuentan con las características de seguridad necesarias. <br>|*plataforma:* js<br>|
|**Controlador funcional**|application-component||*plataforma:* js<br>|
|**Modelo (neg)**|application-component||*plataforma:* cs<br>|
|**Puerto datos 1**|application-component||*plataforma:* js<br>|
|**Puerto datos 2**|application-component||*plataforma:* cs<br>|
|**Seguridad**|application-component||*plataforma:* sql<br>*brecha:* 100<br>|
|**Transacciones**|application-component||*plataforma:* sql<br>*brecha:* 100<br>|
|**Utilitario**|application-component||*plataforma:* no-sql<br>|
|**Vista móvil**|application-component||*plataforma:* js<br>|
|**Vista web**|application-component|-	Verificados los SSL, se recomienda adquirir SSL seguros, con entidades certificadoras. <br>Si se desea continuar con SSL de Let's Encrypt, se recomienda automatizar el proceso de actualización dado que al dejar estos en modo actualización manual es probable el olvido de esta actualización (Estos certificados se deben actualizar trimestralmente y no cuentan con las características de seguridad necesarias. <br>4.	SERVICIOS IDENTIFICADOS:<br>Servidor web:  Microsoft-IIS/10.0 <br>Marco de Programación: ASP.NET<br>Huellas digitales identificadas:  <br>Huella digital SHA-256 “FC:79:06:7E:F5:24:20:50:F1:C0:74:F7:85:56:B9:05:B7:33:A3:2D:44:A0:48”<br>Huella digital SHA1 “8C:48:BD:E2:F5:18:18:C3:85:96:68:44:2E:28:A0:68:08:2F:0A:BE”<br>|*plataforma:* html<br>|
|**Interfaz de aplicación (runtime)**|application-interface|Servidor web:  Microsoft-IIS/10.0 <br>Marco de Programación: ASP.NET<br>Huellas digitales identificadas:  <br>Huella digital SHA-256 “FC:79:06:7E:F5:24:20:50:F1:C0:74:F7:85:56:B9:05:B7:33:A3:2D:44:A0:48”<br>Huella digital SHA1 “8C:48:BD:E2:F5:18:18:C3:85:96:68:44:2E:28:A0:68:08:2F:0A:BE”<br>|*plataforma:* angular 11<br>|
|**API externas**|application-service|||
|**Application Service (NLB)**|application-service||*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Archivos Compartidos**|application-service|||
|**CDN Contenidos**|application-service||*brecha:* 100<br>|
|**Doku (gest. doc.)**|application-service||*brecha:* 100<br>|
|**Identidades**|application-service|||
|**Interfaz de datos 1**|application-service|||
|**Interfaz de datos 2**|application-service|||
|**Interfaz de datos 3**|application-service|||
|**ccccc Proveedores contenidos**|application-service||*brecha:* 100<br>|
|**Mensaje: JSON**|data-object|||
|**Infraestructura SUI**|grouping|Soporte de infraestructura a los componentes del SUI Migración. Servidores y ambientes de cómputo para la ejecución del software base de los componentes misionales del SUI de PGN.<br>||
|**PGN SIU**|grouping|El objetivo principal de la arquitectura del SUI de la migración es la centralización de los conceptos misionales: concentrar los conceptos misionales en componentes aislados; dejar por fuera de estos componentes misionales todo lo distintos a la misionalidad de la PGN.<br>Los objetivos secundarios de esta arquitectura SUI de la migración son flexibilidad y extensibilidad. Dichos objetivos son independientes. Es decir, estos pueden ser maximizados sin conclifcto entre ellos.<br>||
|**Servidor BDD App**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz<br>Discos	SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br>||
|**Servidor BDD Config**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz<br>Discos	SO C: 80 GB, Backup E: 250 GB, SQL Data F: 250 GB, SQL Log G: 250 GB, TempDB  G: 30 GB.<br>||
|**Servidor Web App**|node|Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM	8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos	SO C: 126 GB. SO D: 16 GB.<br>||
|**Servidor Web Canales**|node|Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM	8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos	SO C: 126 GB. SO D: 16 GB.<br>||

## Lineabase.0.SIU applicación. física
![Diagram: Lineabase.0.SIU applicación. física](images/Lineabase.0.SIUapplicación.física.png){#fig:Lineabase.0.SIUapplicación.física width=}

Procuraduría General de la Nación (PGN), módulo SIU migrado, 2023. Elementos físicos que soportan a la aplicación Sistema de Información Único (SIU en adelante) de la PGN, actual Fase I y existente en Fase II. Presentación de componentes de software y tecnologeia física (hardware) implementados en la Fase I y requeridos por Fase II (presente proyecto).

## Representación Arquitectónica
Con una arquitectura orientada a servicios SUI recopila:

1. Runtime: Es el servicio que interactúa con el usuario final (GUI) elaborado en Angular 11
1. API Tx: Servicio api rest base node encargado de realizar las transacciones básicas CRUD
1. API Config / Seguridad. Servicio Web API .Net Framework encargado de gestionar características con la autenticación y configuración

<br>


### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Application Collaboration**|application-collaboration|||
|**Application Collaboration**|application-collaboration|||
|**App**|application-component||*plataforma:* node Js<br>*brecha:* 100<br>|
|**App PGN Móvil**|application-component|A partir de los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, se realizaran pruebas de seguridad a partir del analisis de vulnerabilidades, y pruebas de Ethikal Hacking. <br>Protección de datos personales, <br>Los sistemas de información que recogen, procesan y almacenan información de los derechos de las personas se deben almacenar de forma adecuada, la información que pueda ser vulnerada puede generar obliaciones legales y éticas con respecto a la perdida de informacion confidencial por parte de ciudadanos del pais. <br>La informacion contenida en las bases de datos debe tener los mecanismos de cifrado que en otros apartados se han mencionado. <br>La legislación que hay que tener como referencia, ley 1581 de 2012. Decreto 1377 de 2013<br>La metodologia empleada tendrá las siguientes fases: <br>•	FASE DE RECONOCIMIENTO: <br>Se recolectará toda la información posible, usando diferentes técnicas como:<br>o	Recopilación de dominios/IPs/puertos/servicios<br>o	Recopilación de metadatos<br>o	Uso de Google Dorks.<br>•	ANÁLSIS DE VULNERABILIDADES: <br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. <br>•	EXPLOTACIÓN: <br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: <br>o	Inyección de código<br>o	Inclusión de ficheros locales o remotos<br>o	Evasión de autenticación<br>o	Carencia de controles de autorización<br>o	Ejecución de comandos en el lado del servidor<br>o	Ataques tipo Cross Site Request Forgery<br>o	Control de errores<br>o	Gestión de sesiones<br>o	Fugas de información<br>o	Secuestros de sesión<br>o	Comprobación de las condiciones para realizar una denegación de servicio.<br>	<br>•	POST EXPLOTACIÓN:<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.<br>No	URL	IP<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz<br>135.181.185.207<br>|*plantilla:* element-md-bold<br>*brecha:* 100<br>|
|**App PGN Web**|application-component|A partir de los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, se realizaran pruebas de seguridad a partir del analisis de vulnerabilidades, y pruebas de Ethical Hacking. <br>Los resultados permitirán identificar los requisitos de seguridad que los sistemas de informacion o servicios web deberán cumplir.<br>La metodologia empleada tendrá las siguientes fases: <br>•	FASE DE RECONOCIMIENTO: <br>Se recolectará toda la información posible, usando diferentes técnicas como:<br>o	Recopilación de dominios/IPs/puertos/servicios<br>o	Recopilación de metadatos<br>o	Uso de Google Dorks.<br>•	ANÁLSIS DE VULNERABILIDADES: <br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. <br>•	EXPLOTACIÓN: <br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: <br>o	Inyección de código<br>o	Inclusión de ficheros locales o remotos<br>o	Evasión de autenticación<br>o	Carencia de controles de autorización<br>o	Ejecución de comandos en el lado del servidor<br>o	Ataques tipo Cross Site Request Forgery<br>o	Control de errores<br>o	Gestión de sesiones<br>o	Fugas de información<br>o	Secuestros de sesión<br>o	Comprobación de las condiciones para realizar una denegación de servicio.<br>	<br>•	POST EXPLOTACIÓN:<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.<br>No	URL	IP<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz<br>135.181.185.207<br>El Login deberá evidenciar el control de errores, al momento de realizar la validación deberá mensaje de error para el caso que se autentique con credenciales erradas. |*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Config**|application-component||*plataforma:* cs<br>|
|**Punto acceso público**|application-interface|URL tipo C<br>HTTP||
|**Application Service (NLB)**|application-service||*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Interfaz de datos 1**|application-service|||
|**Interfaz de datos 2**|application-service|||
|**Communication Network (DMZ)**|communication-network|||
|**Communication Network (LAN)**|communication-network|||
|**Communication Network (internet)**|communication-network|||
|**Balanceador**|node|||
|**Servidor BDD App**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz<br>Discos	SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br>||
|**Servidor BDD Config**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz<br>Discos	SO C: 80 GB, Backup E: 250 GB, SQL Data F: 250 GB, SQL Log G: 250 GB, TempDB  G: 30 GB.<br>||
|**Servidor Web App**|node|Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM	8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos	SO C: 126 GB. SO D: 16 GB.<br>||
|**Servidor Web Canales**|node|Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM	8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos	SO C: 126 GB. SO D: 16 GB.<br>||
|**www pgn com**|technology-interface|||

## Seguridad.2. Lineabase.0.SIU Applicación
![Diagram: Seguridad.2. Lineabase.0.SIU Applicación](images/Seguridad.2.Lineabase.0.SIUApplicación.png){#fig:Seguridad.2.Lineabase.0.SIUApplicación width=}

## Representación Arquitectónica
Con una arquitectura orientada a servicios SUI recopila:

1. Runtime: Es el servicio que interactúa con el usuario final (GUI) elaborado en Angular 11
1. API Tx: Servicio api rest base node encargado de realizar las transacciones básicas CRUD
1. API Config / Seguridad. Servicio Web API .Net Framework encargado de gestionar características con la autenticación y configuración




### Catálogo de Elementos
| Name| Type| Description| Properties
|:--------|:--------|:--------|:--------|
|**Application Collaboration**|application-collaboration|||
|**Application Collaboration**|application-collaboration|||
|**App**|application-component||*plataforma:* node Js<br>*brecha:* 100<br>|
|**App PGN Móvil**|application-component|A partir de los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, se realizaran pruebas de seguridad a partir del analisis de vulnerabilidades, y pruebas de Ethikal Hacking. <br>Protección de datos personales, <br>Los sistemas de información que recogen, procesan y almacenan información de los derechos de las personas se deben almacenar de forma adecuada, la información que pueda ser vulnerada puede generar obliaciones legales y éticas con respecto a la perdida de informacion confidencial por parte de ciudadanos del pais. <br>La informacion contenida en las bases de datos debe tener los mecanismos de cifrado que en otros apartados se han mencionado. <br>La legislación que hay que tener como referencia, ley 1581 de 2012. Decreto 1377 de 2013<br>La metodologia empleada tendrá las siguientes fases: <br>•	FASE DE RECONOCIMIENTO: <br>Se recolectará toda la información posible, usando diferentes técnicas como:<br>o	Recopilación de dominios/IPs/puertos/servicios<br>o	Recopilación de metadatos<br>o	Uso de Google Dorks.<br>•	ANÁLSIS DE VULNERABILIDADES: <br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. <br>•	EXPLOTACIÓN: <br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: <br>o	Inyección de código<br>o	Inclusión de ficheros locales o remotos<br>o	Evasión de autenticación<br>o	Carencia de controles de autorización<br>o	Ejecución de comandos en el lado del servidor<br>o	Ataques tipo Cross Site Request Forgery<br>o	Control de errores<br>o	Gestión de sesiones<br>o	Fugas de información<br>o	Secuestros de sesión<br>o	Comprobación de las condiciones para realizar una denegación de servicio.<br>	<br>•	POST EXPLOTACIÓN:<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.<br>No	URL	IP<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz<br>135.181.185.207<br>|*plantilla:* element-md-bold<br>*brecha:* 100<br>|
|**App PGN Web**|application-component|A partir de los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet, se realizaran pruebas de seguridad a partir del analisis de vulnerabilidades, y pruebas de Ethical Hacking. <br>Los resultados permitirán identificar los requisitos de seguridad que los sistemas de informacion o servicios web deberán cumplir.<br>La metodologia empleada tendrá las siguientes fases: <br>•	FASE DE RECONOCIMIENTO: <br>Se recolectará toda la información posible, usando diferentes técnicas como:<br>o	Recopilación de dominios/IPs/puertos/servicios<br>o	Recopilación de metadatos<br>o	Uso de Google Dorks.<br>•	ANÁLSIS DE VULNERABILIDADES: <br>Se analizará la información recopilada en la fase anterior y se realizará el descubrimiento de las vulnerabilidades. <br>•	EXPLOTACIÓN: <br>•	Se realizarán todas aquellas acciones que puedan comprometer al sistema auditado, las pruebas a implementar pueden ser de ataques tipo: <br>o	Inyección de código<br>o	Inclusión de ficheros locales o remotos<br>o	Evasión de autenticación<br>o	Carencia de controles de autorización<br>o	Ejecución de comandos en el lado del servidor<br>o	Ataques tipo Cross Site Request Forgery<br>o	Control de errores<br>o	Gestión de sesiones<br>o	Fugas de información<br>o	Secuestros de sesión<br>o	Comprobación de las condiciones para realizar una denegación de servicio.<br>	<br>•	POST EXPLOTACIÓN:<br>En caso de encontrarse una vulnerabilidad que permita realizar otras acciones en el sistema auditado o en su entorno, se realizarán controles adiciones con el objetivo de comprobar la criticidad de esta.<br>No	URL	IP<br>1.	https://runtimetest.lappiz.io/#/auth/login/PGN_Lappiz<br>135.181.185.207<br>El Login deberá evidenciar el control de errores, al momento de realizar la validación deberá mensaje de error para el caso que se autentique con credenciales erradas. |*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Config**|application-component||*plataforma:* cs<br>|
|**Punto acceso público**|application-interface|URL tipo C<br>HTTP||
|**Application Service (NLB)**|application-service||*plataforma:* angular 11<br>*brecha:* 100<br>|
|**Interfaz de datos 1**|application-service|||
|**Interfaz de datos 2**|application-service|||
|**Autenticación**|business-object|Con el objetivo de incrementar el nivel de seguridad, para el proceso de autenticación se tendrán en cuenta las siguientes consideraciones:  <br>Validación del proceso de gestión de usuarios: La fortaleza de la autenticación dependerá del proceso de gestión de usuarios implementado por parte de la entidad. Se debe tener en cuenta los lineamientos definidos en la política Específica de Control de Acceso.  <br>Autenticación con integración de Windows: La autenticación permitirá que los usuarios asignados al dominio, una vez que se ingresen las credenciales, y realizada la validación, se autorizará el acceso a los servicios y/o soluciones a partir de la integración del directorio activo con la integración del LDAP – (Lightweight Directory Access Protocol).  <br>Los tipos de autenticación realizadas a partir de las identidades administradas de los recursos de Azure, entidades de Servicio y Certificados, podrán ser integrado con los dominios del directorio activo (DA) local. Por lo que respecta a la autenticación, será generado con la asignación de usuarios y credenciales definidas alineadas con la política Específica de Control de Acceso., a partir de la integración será validado el ingreso a las diferentes soluciones y/o sistemas de información de la PGN.  <br>Manejo y uso de contraseñas: Los servidores públicos deberán tener en cuenta los lineamientos definidos para la creación y gestión de contraseñas del Sistema de Gestión de Seguridad de la Información SGSI de la Procuraduría General de la Nación. <br>Utilización de canales cifrados: El proceso de autenticación tendrá mecanismos de transmisión seguro. El uso del TLS (Transport Layer Security), será necesario para el acceso a la página de autenticación que ayude a garantizar la autenticidad de la aplicación a los funcionarios, como en la transmisión de las credenciales.  <br>Bloqueo de cuentas: Aquellas cuentas sobre las que se han realizados múltiples intentos de conexiones fallidas, cinco (5) intentos erróneos, se tendrá implementado un bloqueo temporal o permanente como mecanismo de seguridad para evitar amenazas de ataques.  ||
|**Autorización**|business-object|Metodología <br>Los mecanismos de autorización para el acceso a los sistemas de información de la procuraduría general de la nación describen la forma de cómo se restringe el acceso a los diferentes módulos (Misionales (SIM), Registros de Inhabilidades (SIRI), Nómina, Control Interno y relatoría, entre otros.), y que se considera un mecanismo de protección, que ayuda a reaccionar ante cualquier operación no autorizada. El control de acceso basado en roles (RBAC), enfoca la idea de que a los funcionarios se les otorgue los permisos de acceso a los recursos, basados en los roles y/o perfiles que este posee. Este control posee dos características fundamentales: i) los accesos son controlados por medio de los roles y/o perfiles asignados, quiere decir, a los servidores públicos, contratistas, terceros y otros colaboradores autorizados para interactuar con los sistemas de información se le asignan los roles y el encargado/responsable definirá los permisos, que a su vez están relacionados con los roles, ii) Los roles pueden ser definidos a nivel jerárquico, es decir que un rol podrá ser miembro de otro rol.  <br>Un proceso de autorización basado en roles, identifica tres factores importantes, i) Todos los servidores públicos, contratistas, terceros y otros <br>Colaboradores, deben tener un rol asignado, si no es asignado no podrá realizar ninguna acción relacionada con el acceso, ii) un usuario podrá hacer uso de los permisos asociados a los roles asignados, el cual deberá realizar el inicio de sesión el usuario asignado del Directorio activo (DA), iii) los servidores públicos, contratistas, terceros y otros, solo podrán realizar acciones para las cuales han sido autorizados por medio de la activación de sus roles y/o perfiles.  <br>EL control definido para los accesos basados en roles RBAC, permitirá que solo las personas autorizadas de la PGN podrán acceder a ciertos recursos (programas, equipos, aplicaciones, bases de datos, etc.) definido por sus funciones laborales, lo que permitirá controlar los accesos desde diferentes escenarios: Sistemas de información, redes y aplicaciones. <br>Gestión de identidades y Control de acceso:  <br>Gestor de identidades: En esta gestión se planifica el ciclo de vida de las identidades de usuario y se realizan los procesos de sincronización, de acuerdo a los suministros de accesos establecidos por la entidad, los cuales son integrados con el servidor que gestiona la identidad y control de acceso.  <br>Gestor de roles: La asignación de roles es sincronizada con la identidad de usuario en el servidor de dominio. Para esta gestión se crean las reglas y condiciones que determinan si un usuario puede o no pertenecer a un rol definido por la entidad. <br>Para el gobierno y gestión de identidades y de acceso, se identificó como primera medida la implementación de la siguiente metodología. <br>REGLAS PARA LA CREACIÓN DE USUARIOS. <br>Identificación de Mecanismos: <br> <br>En este ítem se deben identificar las herramientas con las que cuenta la    entidad, las cuales deberán ser registradas en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_1 (Mecanismos)”. <br>Identificación de Roles y Privilegios <br>Este ítem proporciona al sistema la definición de las políticas organizacionales en cuanto a la definición de los privilegios y roles de los diferentes actores en cada uno de los aplicativos con los que estos interactúan dentro de sus funciones, registradas en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_2 (Roles)”. <br>Aprovisionamiento de cuentas <br>Este ítem establece el proceso adecuado para el aprovisionamiento y des aprovisionamiento de cuentas de usuarios en las diferentes aplicaciones, permitiendo toda la gestión de ellas por medio de un sistema de directorio único y centralizado, Este aprovisionamiento se encuentra registrado en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_4 y Hoja_5 (Permisos)”. <br>Establecimiento de mecanismos de control de acceso:  <br>Este ítem controla que usuarios tienen permitido el acceso a los diferentes aplicativos o herramientas dentro de la organización permitiendo segregar las funciones dependiendo del rol del usuario en cada sistema, Este establecimiento se encuentra registrado en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_3 (Acceso)”. <br>Definición de Privilegios y accesos.  <br>Los accesos y privilegios serán identificados en la matriz, encargado identificar cada uno de los roles y perfiles que se tendrá cada usuario hacia los sistemas de información cumpliendo con el principio del menor privilegio, teniendo en cuenta que los usuarios deberán tener exclusivamente los permisos y privilegios que necesita para el desarrollo de sus actividades. La matriz identificará i) los roles que se deben crear para cada sistema de información, ii) los privilegios que requiere cada rol del sistema y iii) los niveles de accesos requeridos, (Consultar, Modificar, Eliminar) (CRUD) y iv) Tipos de usuarios, roles que pueden ser asignados al perfil, entre otros.  <br>Configuración de permisos <br>La configuración con de los perfiles con sus accesos y privilegios en los sistemas de información se debe realizar empleando las herramientas propias de la procuraduría general de la nacional PGN, y serán asignados los permisos según la matriz de roles y permisos.  <br>Identificación de Mecanismos: <br>En este ítem se deben identificar las herramientas con las que cuenta la    entidad, las cuales deberán ser registradas en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_1 (Mecanismos)”. <br>Identificación de Roles y Privilegios <br>Este ítem proporciona al sistema la definición de las políticas organizacionales en cuanto a la definición de los privilegios y roles de los diferentes actores en cada uno de los aplicativos con los que estos interactúan dentro de sus funciones, registradas en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_2 (Roles)”. <br>Aprovisionamiento de cuentas <br>Este ítem establece el proceso adecuado para el aprovisionamiento y des aprovisionamiento de cuentas de usuarios en las diferentes aplicaciones, permitiendo toda la gestión de ellas por medio de un sistema de directorio único y centralizado, Este aprovisionamiento se encuentra registrado en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_4 y Hoja_5 (Permisos)”. <br>Establecimiento de mecanismos de control de acceso:  <br>Este ítem controla que usuarios tienen permitido el acceso a los diferentes aplicativos o herramientas dentro de la organización permitiendo segregar las funciones dependiendo del rol del usuario en cada sistema, Este establecimiento se encuentra registrado en el documento denominado: “Clasificación y gestión de usuarios, roles y perfiles.xlsx / Hoja_3 (Acceso)”. <br>Definición de Privilegios y accesos.  <br>Los accesos y privilegios serán identificados en la matriz, encargado identificar cada uno de los roles y perfiles que se tendrá cada usuario hacia los sistemas de información cumpliendo con el principio del menor privilegio, teniendo en cuenta que los usuarios deberán tener exclusivamente los permisos y privilegios que necesita para el desarrollo de sus actividades. La matriz identificará i) los roles que se deben crear para cada sistema de información, ii) los privilegios que requiere cada rol del sistema y iii) los niveles de accesos requeridos, (Consultar, Modificar, Eliminar) (CRUD) y iv) Tipos de usuarios, roles que pueden ser asignados al perfil, entre otros.  <br>Configuración de permisos <br>La configuración con de los perfiles con sus accesos y privilegios en los sistemas de información se debe realizar empleando las herramientas propias de la procuraduría general de la nacional PGN, y serán asignados los permisos según la matriz de roles y permisos.  ||
|**Cifrado de Datos en tránsito**|business-object|Proteger la información propia de la PGN utilizando mecanismos de cifrado que permita garantizar los pilares de Segurida de la Información Confidencialidad e integridad, asimismo reducir los riesgos de la información mediante la ayuda de Técnicas Criptograficas. <br>Como mecanismos se propone implementar estos  mecanismos de cifrado, como el protocolo TLS ( Transport Layer Security) que permite a dos partes identificarse y autenticarse entre sí y comunicarse con confidencialidad e integridad de datos a partir de la conexión del usuario y un servidor WEB.<br>Se propone integrar certificados SSL, que permite cifrar la información confidencial a fin de que solo los autorizados puedan tener acceso a ella, y asi evitar manipulacion de información confidencial. La Seguridad  que brinda SSL, da garantía para acceder a los aplicativos de PNG. <br>Como implementar certificados SSL?<br>Podran ser adquiridos a través del proveedor de dominios.<br>TLS el protocolo que surge para reforzar la seguridad de los certificados SSL, que funciona como mecanismo de encriptación para que sea realmente transparente el envio de la información, proporcionando una autenticación solida, restringiendo la manipulación, interceptación y alteración de mensajes.<br>La ultima versión del TLS es la 1.3<br>||
|**Cifrado de datos en tránsito**|business-object|Proteger la información propia de la PGN utilizando mecanismos de cifrado que permita garantizar los pilares de Segurida de la Información Confidencialidad e integridad, asimismo reducir los riesgos de la información mediante la ayuda de Técnicas Criptograficas. Como mecanismos se propone implementar estos  mecanismos de cifrado, como el protocolo TLS ( Transport Layer Security) que permite a dos partes identificarse y autenticarse entre sí y comunicarse con confidencialidad e integridad de datos a partir de la conexión del usuario y un servidor WEB.<br>Se propone integrar certificados SSL, que permite cifrar la información confidencial a fin de que solo los autorizados puedan tener acceso a ella, y asi evitar manipulacion de información confidencial. La Seguridad  que brinda SSL, da garantía para acceder a los aplicativos de PNG. <br>Como implementar certificados SSL?<br>Podran ser adquiridos a través del proveedor de dominios.<br>TLS el protocolo que surge para reforzar la seguridad de los certificados SSL, que funciona como mecanismo de encriptación para que sea realmente transparente el envio de la información, proporcionando una autenticación solida, restringiendo la manipulación, interceptación y alteración de mensajes.<br>La ultima versión del TLS es la 1.3||
|**Communication Network (DMZ)**|communication-network|||
|**Communication Network (LAN)**|communication-network|||
|**Communication Network (internet)**|communication-network|||
|**Balanceador**|node|||
|**Firewall BDD**|node||*brecha:* 100<br>|
|**Network Firewall/WAF**|node||*brecha:* 100<br>|
|**Servidor BDD App**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz<br>Discos	SO C: 126 GB, Backup E: 511 GB, SQL Data F: 510 GB, SQL Log   G: 510 GB, TempDB  G: 63.6 GB.<br>||
|**Servidor BDD Config**|node|Sistema Operativo Windows Server 2019 Standard o Datacenter x64. RAM	8 GB. CPU 64 Bits, 4 Cores > 2 Ghz<br>Discos	SO C: 80 GB, Backup E: 250 GB, SQL Data F: 250 GB, SQL Log G: 250 GB, TempDB  G: 30 GB.<br>||
|**Servidor Web App**|node|Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM	8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos	SO C: 126 GB. SO D: 16 GB.<br>||
|**Servidor Web Canales**|node|Windows Server 2019 Standard o Datacenter x64. Nombre físico. IP LAN. IP Pública. Windows Server 2019 Standard or Datacenter x64. RAM	8  GB. CPU	64 Bits. 4 Cores de 2 Ghz. Discos	SO C: 126 GB. SO D: 16 GB.<br>||
|**Sistema de Seguridad (LDAP) 1**|node|Sistema de Seguridad (LDAP) 1. Control de acceso internet, <br>La autenticación podrá estar integrada con el directorio activo, a partir de la generación de codigo para ek ingreso con 2FA, que podrá generar un código la plataforma de correo corporativo, el cual solicitará el codigo de autenticacion y una vez ingreado podrá redirigir al sitio.<br>|*brecha:* 100<br>|
|**Sistema de Seguridad (LDAP) 2**|node|Sistema de Seguridad (LDAP) 2. Control de acceso internet, <br>La solución se podra integrar con el directorio activo, a partir de la generación del 2FA, que podrá generar un  codigo por desde la plataforma de office 365, el cual solicitará el codigo de autenticacion y una vez ingreado podrá acceder al sitio. <br>|*brecha:* 100<br>|
|**www pgn com**|technology-interface|||


``Generated on: Thu Oct 19 2023 09:18:43 GMT-0500 (COT)``

## Requerimientos de Administración
1.	Las soluciones deben permitir la administración de los Roles de Usuarios: esta funcionalidad debe permitir configurar los diferentes roles de los usuarios funcionales de los procesos. 
2.	Administrar los Perfiles de acceso por rol: Esta funcionalidad permitirá configurar a que funcionalidades u opciones de la solución puede entrar un usuario con un rol específico. 
Administrar los Usuarios de la Solución: Esta funcionalidad debe permitir configurar, activar, desactivar usuarios de las soluciones desarrolladas.
4.	Para los casos que aplique se debe asociar el desarrollo con el mecanismo de Firmas (digital, electrónica o mecánica): Esta funcionalidad debe permitir configurar los usuarios que tienen permitida la aprobación de documentos desde la solución implementada, a través del tipo de firma que corresponda. 
5.	Administrar los Permisos de acceso: Esta funcionalidad permite definir específicamente a que servicios de la solución puede ingresar un usuario (CRUD). 
6.	En los desarrollos se debe contar con un módulo de auditoría que permita generar consultas para conocer quién y cuándo se ha realizado una actuación determinada dentro de procesos críticos, almacenando el código del usuario la actuación, la acción, la fecha, la hora, y la dirección IP de la máquina. 
7.	Las soluciones deben permitir la configuración de permisos de consulta con diferentes alcances para cada tipo de usuario. 
8.	Desde la interfaz de usuario se debe poder crear, modificar o inactivar usuarios, perfiles o roles, permisos a las diferentes funcionalidades de la solución. 
9.	Las soluciones deben permitir la definición de varios tipos de usuario. 
10.	Las soluciones deben permitir la parametrización de los consecutivos que maneja la entidad para los diferentes documentos generados por las soluciones. 
11.	Debe permitir parametrizar la vinculación del consecutivo a un documento en forma manual o automática. 
12.	Las soluciones deben permitir que se configure la autenticación de forma interna integrándose con LDAP el acceso de los usuarios y actores de las diferentes dependencias de la entidad que interactúen con los demás sistemas. 

<br>


## Requerimientos de Seguridad
1. Las soluciones deben dar cumplimiento a las políticas institucionales del sistema de gestión de seguridad de la información establecidas por la entidad que busca garantizar la confidencialidad, integridad y disponibilidad de la información que se genera, procesa, almacena y/o transmite en los sistemas de Información de la Entidad. 
1. Las soluciones de automatización de procesos a implementar deben permitir la Gestión de Seguridad de Usuarios, grupos de usuarios y asignación de Roles y perfiles de usuarios, permitiendo asociar las acciones disponibles en la solución con respecto a roles de usuario, permitiendo parametrizar las funcionalidades que cada actor puede usar en la solución. 
1. Un usuario puede estar asociado a uno o más roles, de tal manera que los menús de navegación de la solución se muestran o despliegan dependiendo de las acciones asociadas a cada rol de usuario, permitiendo así que cuando el usuario es autenticado correctamente, la solución verifica los roles que tiene activos para otorgarle únicamente las acciones autorizadas. 
1. El diseño de la solución debe definir los criterios necesarios para asegurar la trazabilidad y auditoría sobre las acciones de creación, actualización, modificación o borrado de los componentes de información, de tal manera que la solución debe permitirle al administrador de la solución parametrizar las tablas y eventos que pueden auditarse. 
1. Las soluciones deben tener en cuenta mecanismos que aseguren el registro histórico para poder mantener la trazabilidad de las acciones realizadas por los usuarios, contemplando el registro de auditoría que contiene información de fecha y hora, identificación del registro, tabla afectada, descripción del evento, tipo de evento, usuario que realiza la acción, identificación de sesión y dirección IP del usuario que efectuó la transacción. 
1. La solución debe proveer una consulta que permita a un usuario con los privilegios asignados, consultar los registros de auditoría, aplicando criterios de filtro (usuario, maquina, rango de fechas y tipo de operación). 
1. Las soluciones deben integrarse con LDAP – (Lightweight Directory Access Protocol) para los procesos de inicio de sesión y autenticación. La solución debe soportar la integración Nativa con Active Directory de Microsoft. Para usuarios externos el mecanismo de autorización, autenticación y acceso será controlado a través del modelo de seguridad de la solución (no habrá autenticación para usuarios externos). 
1. Las soluciones deben cumplir con los lineamientos de seguridad relacionados a su utilización a través de redes públicas y privadas, garantizando la confidencialidad e integridad de la información y acceso a ella. 
1. Debe evidenciar que, a través de pruebas de vulnerabilidad, garantiza la seguridad de la información. Estas pruebas deben suministrar evidencia de que se usaron umbrales de seguridad para establecer niveles mínimos aceptables de calidad de la seguridad y de la privacidad. 
1. Debe incluir un mecanismo de cifrado de los datos que se transportan entre los diferentes componentes tecnológicos y los datos sensibles de la base de datos que representen un alto nivel de confidencialidad. 
1. A nivel de la base de datos debe poder definirse reglas de validación de integridad de datos (unicidad, referencial y negocio). 
1. Debe contemplar el cumplimiento de la normatividad vigente en cuanto a protección de datos personales y debe permitir el manejo de excepciones. 
1. Para los casos que aplique se debe permitir el manejo de certificados y/o firmas digitales en los documentos que así se definan para efectos de aprobación y digitalización. 
1. Debe contemplar las prácticas de desarrollo seguro de aplicaciones y/o implementación segura de productos, para su naturaleza Web based. 
1. Debe funcionar sobre protocolo SSL (certificados internos de la entidad cuando los sistemas de información sean internas y certificados validos públicamente cuando los sistemas de información estén expuestas a internet). 
1. Debe entregar un procedimiento para el respaldo de la información de acuerdo con las necesidades de la entidad. 
1. Debe incluir uso de criptografía para transacciones y/o campos sensibles según lo indiquen las normas vigentes y las necesidades específicas del negocio de acuerdo como lo determine la entidad. 
1. Debe contemplar un modelo de datos que garantice base de datos única para evitar que se pueda presentar duplicidad de información. 
1. En la información confidencial solo puede ser consultada por los perfiles autorizados e igualmente restringir documentos de consulta según los privilegios o permisos asociados. 
1. A nivel de la base de datos debe poder definirse reglas de validación de integridad de datos (unicidad, referencial y negocio). 
1. Debe cerrar las transacciones luego de máximo 10 minutos de inactividad. 
1. Debe incluir controles de bloqueo de cuenta después de un máximo de 5 intentos erróneos a fin de evitar ataques de fuerza bruta. 
1. Debe evidenciar el resultado positivo frente apruebas de ethical hacking, análisis de vulnerabilidades, carga, estrés y desempeño antes de la puesta en operación de acuerdo con los lineamientos de la entidad. 
1. Debe cumplir con todos los lineamientos de desarrollo seguro establecidos en The OWASP Foundation recomendados en la “Guía de desarrollo OWASP” y “OWAS Cheat Sheet”. 

<br>


<div style="page-break-before: always;"></div>
\newpage

# Referencias {.page_break_before}
<!-- Explicitly insert bibliography here -->
<div id="refs">@eservices1-22 @eservices3-22 @eservices4-22 @eservices5-23 @eservices6-12 @eservices7-23 @bptrends07
</div>



