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

    x = 40
    y = 20
    gfx.drawCircleAtPoint(x, y, 25)
    
    angle = math.random() * math.pi
    x_coord = 50 * math.cos(angle)
    y_coord = 50 * math.sin(angle)

end

myGameSetUp()

-- This function is called right before every frame is drawn onscreen.

function playdate.update()

    if playdate.buttonIsPressed( playdate.kButtonUp ) then
        x = x - 10
    end
    if playdate.buttonIsPressed( playdate.kButtonDown ) then
        x = x + 10
    end
    if playdate.buttonIsPressed( playdate.kButtonLeft) then
        y = y - 20
    end
    if playdate.buttonIsPressed( playdate.kButtonRight) then
        y = y + 20
    end

    gfx.clear()
    gfx.drawCircleAtPoint(x, y, 25)

    playdate.graphics.drawLine(x + x_coord, y + y_coord, x - x_coord, y - y_coord)

    -- Call the functions below in playdate.update() to draw sprites and keep
    -- timers updated. (We aren't using timers in this example, but in most
    -- average-complexity games, you will.)

    -- gfx.sprite.update()
    playdate.timer.updateTimers()

end
