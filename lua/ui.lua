function screenSwitch()
    if state == "dvd" then
        dvdDisplay()
    end
end

function textUI()
    if isDebug == false and isStats then
        love.graphics.setColor(1, 1, 1)
        love.graphics.print("hits: ".. stats.hit, fonts[1], 10, 7)
        love.graphics.print("corner: ".. stats.corner, fonts[1], 10, 22)
    else
    end
end

function exitConfirm()
    love.graphics.setColor(exitColor)
    love.graphics.printf("Press Escape to exit", fonts[1], 0, wHeight - 80, wWidth, "center")
end

function exitAnim(dt)
    if exitBool then
        exitTimeout = exitTimeout + dt
    else
        exitTimeout = 0
    end

    if exitTimeout > 0 and exitTimeout < 1.5 then
        exitColor[4] = 1
    end
    
    if exitTimeout > 1.5 then
        exitColor[4] = exitColor[4] - dt * 5
    end
    if exitTimeout > 1.7 then
        exitBool = false
    end
end

function debugUI()
    love.graphics.setColor(1, 1, 1)
    love.graphics.print(love.timer.getFPS() .. " FPS", fonts[2], 10, 10)
    love.graphics.print(wWidth .. "x" .. wHeight, fonts[2], 10, 25)
end
