Algoritmo Proyecto_Sistema_Costos
    Escribir "Ingrese el nombre del producto";
    Definir nombreproducto como Caracter;
    Leer nombreproducto;
    
    // Leer el precio original del producto
    Escribir "Ingrese el precio original del producto: ";
    Definir precioproducto Como Real;
    Leer precioproducto;
    
    // Preguntar si tiene un cupón de descuento
    Definir tieneCupon como Caracter;
    Escribir "¿Tiene un cupón de descuento? (sí/no): ";
    Leer tieneCupon;
    
    Definir preciosindescuento como Real;
    // Inicializar variable para el precio final
    preciosindescuento <- precioproducto;
    Definir precio_con_descuento Como Real;
    Definir descuento como Real;
    
    // Si tiene cupón, aplicar un 10% de descuento
    Si tieneCupon == "sí" o tieneCupon == "SI" o tieneCupon == "Si" o tieneCupon == "sI" o tieneCupon == "si" o tieneCupon == "Sí" o tieneCupon == "SÍ" Entonces
        descuento <- precioproducto * 0.10;
        precio_con_descuento <- precioproducto - descuento;
        Escribir "Se aplicó un descuento del 10%. El subtotal con descuento es $", precio_con_descuento;
    Sino
        precio_con_descuento <- precioproducto;
        Escribir "No se aplica cupón de descuento. Subtotal es $", preciosindescuento;
    FinSi
    
    // Aplicar 12% de impuesto al producto
    Definir precio_con_impuesto como Real;
    Definir impuestoIVA como Real;
    Definir impuesto como Real;
    
    impuestoIVA <- 0.12;
    impuesto <- precio_con_descuento * impuestoIVA;
    precio_con_impuesto <- precio_con_descuento + impuesto;
    Escribir "El subtotal más impuesto del producto es: $", precio_con_impuesto;
    
    Escribir "Ingrese cuántos productos va a comprar";
    Definir cantidadproductos como Entero;
    Leer cantidadproductos;
    
    Escribir "¿Desea aplicar descuento por cantidad de productos? Sí o No";
    Definir aplica_descuento_cantidad como Caracter;
    Leer aplica_descuento_cantidad;
    
    Si aplica_descuento_cantidad == "sí" o aplica_descuento_cantidad == "SI" o aplica_descuento_cantidad == "Si" o aplica_descuento_cantidad == "sI" o aplica_descuento_cantidad == "si" o aplica_descuento_cantidad == "Sí" o aplica_descuento_cantidad == "SÍ" Entonces
        descuento <- precioproducto * 0.05;
        precio_con_descuento <- precioproducto - descuento;
        Escribir "Se aplicó un descuento del 5%. El subtotal actual es $", precio_con_descuento;
    Sino
        precio_con_descuento <- precioproducto;
        Escribir "No se aplica descuento por cantidad. Subtotal es $", preciosindescuento;
    FinSi
	
    // Se procederá a calcular el costo del envío considerando dos productos
    Definir costo_fijo_envio, costototal como Real;
    Definir i como Entero; // Declarar pesoproducto fuera del bucle
    Definir destino_producto como Caracter;
    costo_fijo_envio <- 10;
   
	Definir costo_total Como Real;
	Escribir "Ingrese el destino del producto: Nacional o Internacional";
	Leer destino_producto;
	
	Escribir "Ingrese el peso del envío total en Kg. ";
	Definir pesoproducto como Real;
	Leer pesoproducto;
    // Bucle para calcular el costo de envío de varios productos
    Para i <- 0 Hasta cantidadproductos Con Paso 1 Hacer
		
        // Calcular el costo total basado en el peso y destino
        Si destino_producto == "Nacional" Entonces
            // Cálculo para envío nacional
            costo_total <- costo_fijo_envio + (2 * pesoproducto);
        SiNo
            // Cálculo para envío internacional
            costo_total <- costo_fijo_envio + (3 * pesoproducto);
        FinSi
        
        // Mostrar el costo total
        Escribir "El costo total de envío del producto $", (precio_con_descuento *i) + costo_total;
    FinPara
FinAlgoritmo
