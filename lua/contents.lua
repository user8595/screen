function gameContent()
    states()
end

function gameLoop(dt)
    if state == "dvd" then
        dvdUpdate(dt)
        dvdCol()
    end
end

function gameKey(key)
    if key == "escape" then
        love.event.quit(0)
    end

    if key == "f4" then
        if isDebug == false then
            isDebug = true
        else
            isDebug = false
        end
    end

    if key == "f11" then
        if love.window.getFullscreen() == false then
            love.window.setFullscreen(true)
        else
            love.window.setFullscreen(false)
        end

        if state == "dvd" then
            dvdInit()
        end
    end
end
