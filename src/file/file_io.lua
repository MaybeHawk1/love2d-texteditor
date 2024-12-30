local file_io = {}

function file_io.OpenFile(filename)
    local file = assert(io.open(filename, "r"))
    Content = file:read("*all")
    file:close()
    return Content, filename
end

return file_io
