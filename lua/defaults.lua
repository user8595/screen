wWidth, wHeight = love.graphics.getWidth(), love.graphics.getHeight()

fonts = {
    love.graphics.newFont("/assets/monogram.ttf", 24),
    love.graphics.newFont("/assets/Picopixel.ttf", 14),
}

textures = {
    love.graphics.newImage("/assets/textures/DVD_logo.png")
}

-- boolean
showUI = false
UITimeout = 0
isDebug = false

state = "dvd" -- "dvd"

colors = {
    {1, 1, 1, 1},
    {1, 0, 0, 1},
    {0, 1, 0, 1},
    {0, 0, 1, 1},
    {1, 1, 0, 1},
    {1, 0, 1, 1},
    {0, 1, 1, 1},
}
