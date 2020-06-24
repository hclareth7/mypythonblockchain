[11:34 AM, 6/13/2020] Profe Juan Carlos Martínez: - el disenio... un par de parrafos que explique que es lo que hace el servicio que uso Juan para la toma de datos
[11:35 AM, 6/13/2020] Profe Juan Carlos Martínez: - detalles del flujo grama
[11:35 AM, 6/13/2020] Profe Juan Carlos Martínez: - la implementacion... un par de parrafos donde se den las especificaciones del hardware y software usados en la implementacion

Hight level architecture

Este sistema esta construido por dos servicios independientes que se comunican a traves de peticiones HTTP y se definen con la siguiente arquitectura.

Servicio de Bockchain
Este servicio es el nuclueo de todo el sistema en el cual se definen todas las entidades para la construccion de una red de blockchain, estas entidades son

* Transactions: Una transaccion se define como una operacion o accion que contiene una serie de datos relevantes para cada operacion especifica.  

* Block: Un bloque es un objeto con una marca temporal que contine una lista de transacciones creadas en el tiempo de dicha marca, un bloque a demas tiene un indice que define su poscion en la cadena de bloques, tambien un mecanismo de dependencia y enlace fuerte entre los bloques consecutivos para generar una dependecia entre ellos, para implementar este mecanismo utilizamos un hash que define la identidad de un bloque pero ademas se adiciona un atributo hash anterior que indica la identidad del bloque anterior agregado a la cadena de bloques .

* Blockchain: una cadena de bloques es una estructura de datos que almacena bloques validados.

* Peer: un peer es un nodo miembro de la red blockchain

- Consensu function: la funcion consesu le permite a un peer verificar si un bloque es valido para ser agragado a la cadena teniendo en cuenta el algoritmo de prueba de trabajo.

 - Prof of work algoritm: El algoritmo de prueba de trabajo se encarga de generar hashes a partir de un bloque para satisfacer un criterio de dificultad 


- Register node function: esta funcion que realiza el registro de un nuevo peer en la red blockchain usando otro peer como anfitrion el cual proveera la cadena de bloques actualizada y el registro del nuevo miembro peer a la red.

Servicio de Simulacion

Este servicio se encaga de leer un dataset que contine un conjunto de transacciones descritas con una linea temporal, para simular la creacion de bloques y lego ejectar la funcion de consensu obteniendo asi los resultados del tiempo de creacion de las transacciones y el tiempo de consenso todo lo anterior basados en el factor de dificuldad del algoritmo de prueba de trabajo y a demas un factor de incremento en el numero de transacciones.

Este servicio tambien incluye una aplicacion web con la que se interactual para generar los datos de salida en un archivo csv.


La propuesta de este sistema es simular las transacciones que se hacen en una red de blockchain, estas transacciones se definen en un dataset el cual se lee para crear transacciones y con estas blocks para servicio de blockchain, los blocks son creados y posteriormente pasan por una funcion de conseso que verifica si el blok es valido para ser añadido a la blockchain
______________________________________________________________________________________________________________________


Especificaciones del sistema

Para la puesta en marcha de la arquitectura hemos dispuesto de un conjunto de herramientas y tecnologias descritas acontinuacion:

Especificaciones de software:

Para los servicios implementados tanto el de blockchanins como el servicio de sumulacion hemos utilizado como lenguaje de programacion Python, hemos diseÑasdo las APIs de cada servicio con Flask framework, desplegados en un servidor virtual en la nube bajo la arquitectura microservios.

Lenguaje de programacion:
 - Python
Framework:
 - Flask
Arquitecura de despligue:
 - Microservicio


Especificaciones de Hardware

Los servicio de blockchain y de sumilacion fueron desplegados en un servidor virtual con arquitectura sistema operativo Linux con un procesador de 1.70GHz, memoria ram de 0.5GB  
Sistema Operativo
- Linux/Ubuntu16.04 amd64
CPU
- Intel i5-4210U de 1.70GHz 
RAM
- 0.5GB
DISK
- 10GB HDD









 



