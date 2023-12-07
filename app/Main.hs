import Codec.Picture
import Data.List (foldl')

-- Gera a matriz de pesos para o filtro Gaussiano
gaussianKernel :: (Floating a, RealFrac a) => a -> [[a]]
gaussianKernel sigma = 
    let size = 2 * round (2 * sigma) + 1
        f x y = exp (-(x^2 + y^2) / (2 * sigma^2))
        indices = [fromIntegral (i - round (2 * sigma)) | i <- [0..size-1]]
        kernel = [[f x y | x <- indices] | y <- indices]
        sumK = sum (map sum kernel)
    in map (map (/sumK)) kernel










-- Aplica o filtro a um pixel
applyKernel :: [[Float]] -> Image PixelRGB8 -> Int -> Int -> PixelRGB8
applyKernel kernel img x y =
    let size = length kernel
        offset = size `div` 2
        coords = [(dx, dy) | dy <- [0..size-1], dx <- [0..size-1]]
        pixelSum = foldl' addPixel (PixelRGB8 0 0 0) [mulPixel (safePixelAt img (x + dx - offset) (y + dy - offset)) (kernel !! dy !! dx) | (dx, dy) <- coords]
    in pixelSum

-- Função segura para acessar pixels da imagem (trata pixels fora da imagem)
safePixelAt :: Image PixelRGB8 -> Int -> Int -> PixelRGB8
safePixelAt img x y
    | x < 0 || y < 0 || x >= imageWidth img || y >= imageHeight img = PixelRGB8 0 0 0
    | otherwise = pixelAt img x y

-- Funções simplificadas para manipulação de pixels
addPixel :: PixelRGB8 -> PixelRGB8 -> PixelRGB8
addPixel (PixelRGB8 r1 g1 b1) (PixelRGB8 r2 g2 b2) =
    PixelRGB8 (r1 + r2) (g1 + g2) (b1 + b2)

mulPixel :: PixelRGB8 -> Float -> PixelRGB8
mulPixel (PixelRGB8 r g b) f = 
    PixelRGB8 (round $ fromIntegral r * f) (round $ fromIntegral g * f) (round $ fromIntegral b * f)

-- Aplica o filtro Gaussiano a uma imagem
gaussianBlur :: Float -> DynamicImage -> Image PixelRGB8
gaussianBlur sigma img = 
    case img of
        ImageRGB8 imgRGB8 -> 
            let kernel = gaussianKernel sigma
                blurredPx x y = applyKernel kernel imgRGB8 x y
            in generateImage blurredPx (imageWidth imgRGB8) (imageHeight imgRGB8)
        _ -> error "Formato de imagem não suportado."

-- Ponto de entrada do programa
main :: IO ()
main = do
    -- Substitua com o caminho da imagem de entrada
    eitherImg <- readImage "app/images/lenna.png"
    case eitherImg of
        Left err -> putStrLn $ "Erro ao carregar a imagem: " ++ err
        Right img -> do
            -- Substitua 5.0 pelo valor de sigma desejado para o filtro Gaussiano
            let blurredImg = gaussianBlur 5.0 img
            -- Substitua com o caminho da imagem de saída
            savePngImage "app/images/lenna.png" (ImageRGB8 blurredImg)
            putStrLn "Imagem processada e salva com sucesso!"
