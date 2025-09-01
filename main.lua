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

    angle = math.random() * math.pi
    x_coord = 25 * math.cos(angle)
    y_coord = 25 * math.sin(angle)

end

myGameSetUp()

-- This function is called right before every frame is drawn onscreen.

function playdate.update()

    local crank_pos = playdate.getCrankPosition()
    
    rotation = crank_pos / 360.0 * math.pi

    rotated_x = (25 * math.cos(rotation))
    rotated_y = (25 * math.sin(rotation)) 


    if playdate.buttonIsPressed( playdate.kButtonUp ) then
        y = y - 10
    end
    if playdate.buttonIsPressed( playdate.kButtonDown ) then
        y = y + 10
    end
    if playdate.buttonIsPressed( playdate.kButtonLeft) then
        x = x - 20
    end
    if playdate.buttonIsPressed( playdate.kButtonRight) then
        x = x + 20
    end

    gfx.clear()
    gfx.drawRect(187, 0, 10, 70)
    gfx.drawCircleAtPoint(x, y, 25)

    playdate.graphics.drawLine(x + rotated_x, y + rotated_y, x - rotated_x, y - rotated_y)

    playdate.timer.updateTimers()

end
