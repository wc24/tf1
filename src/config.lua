
-- 0 - disable debug info, 1 - less debug info, 2 - verbose debug info
DEBUG = 2

-- use framework, will disable all deprecated API, false - use legacy API
CC_USE_FRAMEWORK = true

-- show FPS on screen
CC_SHOW_FPS = true

-- disable create unexpected global variable
CC_DISABLE_GLOBAL = true

-- for module display
CC_DESIGN_RESOLUTION = {
    width = 640,
    height = 960,
    autoscale = "SHOW_ALL",
    callback = function(framesize)
        local _height = framesize.height
        local _width = framesize.width
        _height = 640 * _height / _width
        if _height < 960 then
            _height = 960
        elseif _height > 1136 then
            _height = 1136
        end
        _width = 640
        return { width = _width, height = _height, autoscale = "SHOW_ALL" }
    end
}
