local font = {}

function font.SetFont(filename)
    local font = love.graphics.newFont(filename, 18)
    love.graphics.setFont(font)
end

return font
