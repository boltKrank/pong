-- The screen width variables

WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

-- Override this to initialise the sate at the begining of program execution
function love.load()
    love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = false,
        vsync = true
    })
end

-- Call each frame after update to draw things
function love.draw()
    -- profile love.graphics.printf(text, x, y, [width], [align])
    love.graphics.printf(
        'Hello Isamu!',         -- Text to display
        0,                      -- Starting X 
        WINDOW_HEIGHT / 2 - 6,  -- Starting halfway down the screen
        WINDOW_WIDTH,           -- Number of pixels to center within
        'center')               -- alignment mode, can be 'center', 'left', or right.
end

-- Called each frame by Love. dt is the time in seconds since last frame
-- dt is deltaTime used to scale.
-- function love.update(dt){


-- }



-- like the C command printf it puts text on the screen


-- love.window.setMode(width, height, params) initialises the Window's dimensions