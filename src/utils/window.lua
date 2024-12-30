local window = {}

function window.set_title(name)
    love.window.setTitle(name)
end

function window.set_icon(filename)
    local icon = love.image.newImageData(filename)
    love.window.setIcon(icon)
end

return window
