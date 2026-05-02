+++
date = '2026-02-13T20:36:50-08:00'
draft = false 
title = 'Practica3'
+++

# Práctica 3 - Instalación Haskell

**Alumno:** Montoya García José Antonio — 377306  
**Docente:** Jose Carlos Gallegos Mariscal  
**Grupo:** 941  
**Unidad:** III

---

## Primera Sesión

### Objetivo

Instalación del entorno de desarrollo de Haskell.

### Introducción

Haskell es un lenguaje de programación funcional, conocido por su enfoque matemático, uso de funciones puras y fuerte sistema de tipos. Para comenzar a trabajar con este lenguaje, fue necesario instalar un conjunto de herramientas especializadas que permiten compilar, ejecutar y administrar proyectos.

### Desarrollo de la práctica

#### 1. Acceso a la página oficial de Haskell

Se ingresó al sitio oficial de descargas de Haskell, donde se recomienda utilizar **GHCup** como método principal de instalación.

#### 2. Instalación mediante GHCup

Se copió el comando proporcionado por la página oficial y se ejecutó en PowerShell (sin permisos de administrador).

```bash
ghcup install ghc
```

#### 3. Herramientas instaladas

| Herramienta | Función |
|-------------|---------|
| GHCup | Administrador de instalación y configuración del entorno Haskell |
| GHC | Compilador principal del lenguaje Haskell |
| HLS | Servidor de lenguaje, soporte para desarrollo |
| Stack | Gestor de proyectos y dependencias (similar a pip en Python) |
| Cabal | Herramienta de construcción y empaquetado de proyectos |
| GHCi / Hugs | Intérprete interactivo para pruebas rápidas en consola |

#### 4. Verificación de instalación

```bash
ghc --version
stack --version
ghci
```

#### 5. Prueba básica en GHCi

```haskell
2+2
-- Resultado: 4
```

#### 6. Confirmación del entorno

- El compilador respondía correctamente
- Stack estaba disponible
- El intérprete ejecutaba operaciones
- El sistema estaba listo para comenzar a programar

### Dificultades encontradas

- Descarga de versiones recientes
- Configuración inicial del PATH
- Confirmación de instalación correcta

Sin embargo, siguiendo la guía oficial, el entorno quedó correctamente configurado.

### Conclusión

Durante la primera sesión se logró instalar y configurar correctamente el entorno de desarrollo de Haskell mediante GHCup, incluyendo herramientas fundamentales como GHC, Stack y GHCi. Esta configuración permitió preparar el sistema para el desarrollo de programas funcionales y sentó las bases necesarias para las prácticas posteriores.

---

## Segunda Sesión

### Objetivo

Comprender los fundamentos básicos del lenguaje Haskell, familiarizarse con su sintaxis y paradigma funcional, y desarrollar una aplicación sencilla tipo TODO.

### Desarrollo de la práctica

#### 1. Verificación del entorno de desarrollo

```bash
ghc --version
stack --version
ghci
```

#### 2. Primer programa en Haskell

Se creó el archivo `primerPrograma.hs`:

```haskell
main = putStrLn "Hola, Haskell!"
```

**Resultado:**

#### 3. Creación de proyecto con Stack

```bash
stack new todo-app
cd todo-app
stack build
stack run
```

#### 4. Modificación del archivo Main.hs

```haskell
module Main where

main :: IO ()
main = putStrLn "Bienvenido a mi TODO App"
```

**Resultado:**

#### 5. Aplicación interactiva TODO

```haskell
module Main where

main :: IO ()
main = do
  putStrLn "Escribe tu primera tarea:"
  tarea1 <- getLine
  putStrLn "Escribe tu segunda tarea:"
  tarea2 <- getLine
  putStrLn "Escribe tu tercera tarea:"
  tarea3 <- getLine
  putStrLn "Tus tareas son:"
  putStrLn ("1. " ++ tarea1)
  putStrLn ("2. " ++ tarea2)
  putStrLn ("3. " ++ tarea3)
```

**Ejemplo de ejecución:**

### Conceptos aprendidos

| Concepto | Descripción |
|----------|-------------|
| `main` | Función principal del programa |
| `putStrLn` | Muestra texto en pantalla |
| `getLine` | Captura texto ingresado por el usuario |
| `do` | Permite ejecutar varias acciones secuenciales |
| `<-` | Asigna la entrada del usuario a una variable |
| `++` | Concatena cadenas de texto |

### Dificultades encontradas

- Extensiones incorrectas de archivos (`.txt` en lugar de `.hs`)
- Errores de sintaxis
- Edición de archivos equivocados
- Uso inicial de Stack

### Conclusión

Durante esta segunda sesión se logró comprender la estructura básica del lenguaje Haskell, su enfoque funcional y el uso de herramientas como Stack para crear proyectos completos. La implementación de la aplicación TODO interactiva permitió aplicar conceptos fundamentales como entrada/salida de datos, manipulación de variables y organización secuencial del código.