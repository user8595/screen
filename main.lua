require("lua.defaults")
require("lua.contents")
require("lua.states")
require("lua.ui")

-- scenes
require("lua.scenes.dvd")

function love.load()
    love.graphics.setDefaultFilter("nearest", "nearest")
    love.mouse.setVisible(false)
end

function love.keypressed(key)
    gameKey(key)
end

function love.update(dt)
    gameLoop(dt)
end

function love.resize(w, h)
    wWidth, wHeight = w, h
end

function love.draw()
    gameContent()
end
