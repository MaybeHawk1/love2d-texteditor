local keyboard = {}

function keyboard.set_quit_key()
    if love.keyboard.isDown("q") and love.keyboard.isDown("lctrl") then
        love.event.quit()
    end
end

return keyboard
