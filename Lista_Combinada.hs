import Data.List (intercalate)

numeros :: [Int]
numeros = [1..10]

frutas :: [String]
frutas = ["Manzana", "Pera", "Banana", "Chinola", 
            "Fresa", "Uva", "Mango", "Lechosa", "Melon", "Sandia"]

combinarListas :: [Int] -> [String] -> [String]
combinarListas [] [] = []
combinarListas (x:xs) (y:ys) = (show x ++ "-" ++ y) : combinarListas xs ys

main :: IO ()
main = do
    putStrLn "Lista de numeros:"
    putStrLn $ unwords (map show numeros)

    putStrLn "\nLista de frutas:"
    putStrLn $ intercalate ", " frutas

    putStrLn "\nLista combinada:"
    mapM_ putStrLn (combinarListas numeros frutas)
 