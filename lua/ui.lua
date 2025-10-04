function screenSwitch()
    if state == "dvd" then
        dvdDisplay()
    end
end

function textUI()
    
end

function debugUI()
    love.graphics.setColor(1, 1, 1)
    love.graphics.print(love.timer.getFPS() .. " FPS", fonts[2], 10, 10)
    love.graphics.print(wWidth .. "x" .. wHeight, fonts[2], 10, 25)
end
