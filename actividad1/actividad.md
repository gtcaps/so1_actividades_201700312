### Universidad de San Carlos de Guatemala
### Facultad de Ingenieria
### Sistemas Operativos 1
### Aybson Diddiere Mercado Grijalva 201700312  

<br/>
<br/>

## Actividad 1 

<br/>
<br/>


### Kernel
#

<br/>
Un kernel no es más que un software especial que forma parte importante del Sistema Operativo de cualquier ordenador. Dentro de sus principales funciones, está el hecho de que facilita cualquier programa principal y necesario en el hardware del ordenador y es el encargado de gestionar cada uno de ellos para que funcionen de forma correcta.


<br>

#### *Tipos de Kernel*
<br>

1. **Kernel Monolitico:** Este tipo de nucleo es aquel que facilita la abstracción del hardware sin importar su grado de potencia o variedad. Estos núcleos son bastante complejos en su manejo.
<br><br>
Tienen un núcleo grande que engloba todos los servicios del sistema. Esta programador de forma no modular y tiene un rendimiento mayor que un micronúcleo.

2. **Microkernel:** Mejor conocido como micronúcleos, estos son aquellos que son catalogados como mejores en comparación con el monolítico, debido a que el mismo cumple una serie de pequeñas abstracciones mucho más simples y su función principal es utilizar diversas aplicaciones para facilitar su funcionalidad.
<br><br>
Su verdadero objetivo, es el de implementar cada servicio de forma separada en cuanto a la política de funcionamiento del sistema, de esta manera se busca que el núcleo funcione bien y sea bastante simple y organizado de utilizar.

3. **Núcleos Hibridos:** Este tipo de kernel, es aquel que se considera una gran modificación del microkernel, se diferencian debido a que este cuenta con un espacio adicional que cumple la función de permitir que el mismo ejecute de forma mucho más rapida y funcional. 


4. **Exonúcleos:** Son aquellos que si bien no cuentan con ningun tipo de abstracción, son aquellos que permiten el uso de bibliotecas. Son núcleos que funcionan bien al momento de ofrecer mucha funcionalidad, gracias a que los mismos cuentan con un acceso directo al hardware del sistema.
<br><br><br>

#### *User Mode vs Kernel Mode*
<br>

- **User Mode:** Cuando se ejecuta una aplicación informatica, se encuentra en modo usuario. En el modo usuario, los procesos obtienen su propio espacio de direcciones y no pueden acceder al espacio de direcciones que pertenece al kernel. Entonces la falla de un proceso no afectara al Sistema Operativo. Si hay una interrupción, solo afecta al proceso en particular.
- **Kernel Mode:** Kernel funciona como software intermedio para hardware y software de aplicación/programas de usuario. El modo kernel generalmente esta reservado para funciones de bajo nivel del Sistema Operativo. El modo kernel  tambien se denomina modo de sistema o modo privilegiado. No es posible ejecutar todos los procesos en el modo kernel porque si un proceso falla, todo el sistema operativo puede fallar.