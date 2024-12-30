local file_io = require("file.file_io")
local font = require("font")
local window = require("utils.window")
local keyboard = require("utils.keyboard")

local backSpaceHeld = false
local backSpaceDelay = 0.05
local backSpaceTimer = 0

function love.load()
    window.set_title "Penger"
    window.set_icon "icon.png"

    U_buffer = ""
end

function love.textinput(text)
    U_buffer = U_buffer .. text
end

function love.keypressed(key)
    if key == "backspace" then
        backSpaceHeld = true
    end
end

function love.keyreleased(key)
    if key == "backspace" then
        backSpaceHeld = false
    end
end

function love.update(dt)
    collectgarbage("collect")

    if backSpaceHeld then
        backSpaceTimer = backSpaceTimer + dt

        if backSpaceTimer >= backSpaceDelay then
            if #U_buffer > 0 then
                U_buffer = U_buffer:sub(1, -2)
            end
            backSpaceTimer = 0
        end
    else
        backSpaceTimer = 0
    end
end

function love.draw()
--    File = file_io.OpenFile("demo.c")
    font.SetFont("jetbrains.ttf")
--    love.graphics.print(File)
    love.graphics.print(U_buffer)
    keyboard.set_quit_key("q")
end
