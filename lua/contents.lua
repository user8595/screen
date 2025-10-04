function gameContent()
    states()
end

function gameLoop(dt)
    if state == "dvd" then
        dvdUpdate(dt)
        dvdCol()
    end
    exitAnim(dt)
end

function gameKey(key)
    if key == "escape" then
        if exitBool == false then
            exitBool = true
        else
            love.event.quit(0)
        end
    end

    if key == "f4" then
        if isDebug == false then
            isDebug = true
        else
            isDebug = false
        end
    end

    if key == "f5" then
        if isStats == false then
            isStats = true
        else
            isStats = false
        end
    end
end
