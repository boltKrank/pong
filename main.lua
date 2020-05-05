-- https://github.com/Ulydev/push
-- Push library is used to make virtual size windows, i.e. makes the pixels bigger.
push = require 'push'

WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243

-- Override this to initialise the sate at the begining of program execution
function love.load()
    -- nearest-neighbor filter downscaling:
    love.graphics.setDefaultFilter('nearest','nearest')

    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = false,
        vsync = true
    })
end

-- love.keypressed(key) Executes the command associated with 'key'
function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end

function love.draw()
    -- begin rendering using virtual resolution:
    push:apply('start')

    -- profile love.graphics.printf(text, x, y, [width], [align])
    love.graphics.printf('Hello Isamu!', 0, VIRTUAL_HEIGHT / 2 - 6, VIRTUAL_WIDTH, 'center')               

    -- end virtual resolution:
    push:apply('end')
end


