local colIndex = 1

local dvd = {
    x = 0,
    y = 0,
    vx = 200,
    vy = 200,
    w = textures[1]:getWidth(),
    h = textures[1]:getHeight(),
    image = textures[1],
}

function dvdInit()
    dvd.x = 0
    dvd.y = 0
    colIndex = 1
end

function dvdDisplay()
    love.graphics.setColor(colors[colIndex])
    love.graphics.draw(dvd.image, dvd.x, dvd.y)
    if isDebug then
        love.graphics.setColor(1, 1, 1)
        love.graphics.print(dvd.vx .. ", " .. dvd.vy, fonts[2], 10, 40)
    end
end

function dvdUpdate(dt)
    dvd.x, dvd.y = math.floor(dvd.x + dt * dvd.vx), math.floor(dvd.y + dt * dvd.vy)
    -- if love.keyboard.isDown("w") then
    --     dvd.y = dvd.y - dt * dvd.vy
    -- elseif love.keyboard.isDown("s") then
    --     dvd.y = dvd.y + dt * dvd.vy
    -- elseif love.keyboard.isDown("a") then
    --     dvd.x = dvd.x - dt * dvd.vx
    -- elseif love.keyboard.isDown("d") then
    --     dvd.x = dvd.x + dt * dvd.vx
    -- end
end

function dvdCol()
    local dL, dR, dT, dB = dvd.x, dvd.x + dvd.w, dvd.y, dvd.y + dvd.h

    --TODO: Make logo speed random when hit screen borders
    if dL < 0 then
        dvd.x = 0
        dvd.vx = -dvd.vx
        colIndex = love.math.random(1, 7)
        stats.hit = stats.hit + 1
    elseif dR > wWidth then
        dvd.x = wWidth - dvd.w
        dvd.vx = -dvd.vx
        colIndex = love.math.random(1, 7)
        stats.hit = stats.hit + 1
    elseif dT < 0 then
        dvd.y = 0
        dvd.vy = -dvd.vy
        colIndex = love.math.random(1, 7)
        stats.hit = stats.hit + 1
    elseif dB > wHeight then
        dvd.y = wHeight - dvd.h
        dvd.vy = -dvd.vy
        colIndex = love.math.random(1, 7)
        stats.hit = stats.hit + 1
    end

    if dL <= 0 and dT <= 0 then
        stats.corner = stats.corner + 1
    elseif dR >= wWidth and dT <= 0 then
        stats.corner = stats.corner + 1
    elseif dL <= 0 and dB >= wHeight then
        stats.corner = stats.corner + 1
    elseif dR >= wWidth and dB >= wHeight then
        stats.corner = stats.corner + 1
    end
end
