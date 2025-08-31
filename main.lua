import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/sprites"
import "CoreLibs/timer"

local gfx <const> = playdate.graphics

function myGameSetUp()

    -- local backgroundImage = gfx.image.new( "Images/background" )
    -- assert( backgroundImage )

    -- gfx.sprite.setBackgroundDrawingCallback(
    --     function( x, y, width, height )
    --         -- x,y,width,height is the updated area in sprite-local coordinates
    --         -- The clip rect is already set to this area, so we don't need to set it ourselves
    --         backgroundImage:draw( 0, 0 )
    --     end
    -- )

    gfx.fillCircleInRect(20, 40, 50, 50)
    x = 40
    y = 20

end

myGameSetUp()

-- This function is called right before every frame is drawn onscreen.

function playdate.update()

    if playdate.buttonIsPressed( playdate.kButtonUp ) then
        x = x - 10
        gfx.clear()
        gfx.fillCircleInRect(y, x, 50, 50)

    end
    if playdate.buttonIsPressed( playdate.kButtonDown ) then
        x = x + 10
        gfx.clear()
        gfx.fillCircleInRect(y, x, 50, 50)
    end
    if playdate.buttonIsPressed( playdate.kButtonLeft) then
        y = y - 20
        gfx.clear()
        gfx.fillCircleInRect(y, x, 50, 50)
    end
    if playdate.buttonIsPressed( playdate.kButtonRight) then
        y = y + 20
        gfx.clear()
        gfx.fillCircleInRect(y, x, 50, 50)
    end

    -- Call the functions below in playdate.update() to draw sprites and keep
    -- timers updated. (We aren't using timers in this example, but in most
    -- average-complexity games, you will.)

    -- gfx.sprite.update()
    playdate.timer.updateTimers()

end
