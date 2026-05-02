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