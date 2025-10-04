function love.conf(t)
    t.identity = "screen"
    t.window.title = "screen"
    t.window.icon = "assets/icon.png"
    t.window.width = 640
    t.window.height = 480   
    t.window.borderless = true
    t.window.fullscreen = true
    t.version = "11.5"

    t.modules.physics = false
end